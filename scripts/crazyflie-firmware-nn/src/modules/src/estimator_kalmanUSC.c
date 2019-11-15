/**
 * EKF author:
 * James Preiss
 * University of Southern California
 *
 */

#include "ekf.h"
// #include "mathconstants.h"
#include "position_external.h"
#include "stabilizer_types.h"
#include "sensors.h"
#include "param.h"

#define GRAV (9.81f)


// EKF implementation uses double-buffered approach
static struct ekf ekfa;
static struct ekf ekfb;
static struct ekf *ekf_front = &ekfa;
static struct ekf *ekf_back = &ekfb;
static void ekf_flip()
{
	struct ekf *ekf_temp = ekf_front;
	ekf_front = ekf_back;
	ekf_back = ekf_temp;
}
static bool initialized = false;
static bool rstWithExtPos = true;


// TODO change EKF funcs to take struct vec,
// then make a function that wraps positionExternalBringupGetLastData

#define ATTITUDE_UPDATE_RATE RATE_500_HZ
#define ATTITUDE_UPDATE_DT (1.0/ATTITUDE_UPDATE_RATE)

static struct vec3_s ekf2vec(struct vec v)
{
	struct vec3_s v3s = { .x = v.x, .y = v.y, .z = v.z };
	return v3s;
}

// public functions

void estimatorKalmanUSCInit(void)
{
	// Initialize to 0 so gyro integration still works without Vicon
	float init[] = {0, 0, 0, 1};
	ekf_init(ekf_back, init, init, init);
	initialized = true;
}

bool estimatorKalmanUSCTest(void)
{
	// Nothing to test...
	return initialized;
}

void estimatorKalmanUSC(state_t *state, sensorData_t *sensors, control_t *control, const uint32_t tick)
{
	// In this new design the state estimator had to get sensor data...
	sensorsReadAcc(&sensors->acc);
	sensorsReadGyro(&sensors->gyro);
	sensorsReadMag(&sensors->mag);

	// rate limit
	if (!RATE_DO_EXECUTE(ATTITUDE_UPDATE_RATE, tick)) {
		return;
	}
	// TODO: should we rate-limit IMU but not vicon, so we have less vicon latency?

	// lazy initialization
	if (rstWithExtPos && positionExternalFresh) {
		float pos[3];
		float vel[3];
		float quat[4];
		uint16_t last_time_in_ms;

		positionExternalGetLastData(&pos[0], &pos[1], &pos[2],
			&quat[0], &quat[1], &quat[2], &quat[3],
			&vel[0], &vel[1], &vel[2],
			&last_time_in_ms);

		ekf_init(ekf_back, pos, vel, quat);
		rstWithExtPos = false;
		positionExternalFresh = false;
	}

	// float acc[3] = {sensors->acc.x * GRAV, sensors->acc.y * GRAV, sensors->acc.z * GRAV};
	float acc[3] = {0, 0, GRAV};
	float gyro[3] = {radians(sensors->gyro.x), radians(sensors->gyro.y), radians(sensors->gyro.z)};
	ekf_imu(ekf_back, ekf_front, acc, gyro, ATTITUDE_UPDATE_DT);
	ekf_flip();

	// check if new vicon data available
	if (positionExternalFresh) {
		float pos[3];
		float vel[3];
		float quat[4];
		uint16_t last_time_in_ms;

		positionExternalGetLastData(&pos[0], &pos[1], &pos[2],
			&quat[0], &quat[1], &quat[2], &quat[3],
			&vel[0], &vel[1], &vel[2],
			&last_time_in_ms);

		ekf_vicon(ekf_back, ekf_front, pos, vel, quat);
		ekf_flip();

		positionExternalFresh = false;
	} else {
		positionExternalUpdateDt();
	}

	state->position = ekf2vec(ekf_back->pos);
	state->velocity = ekf2vec(ekf_back->vel);
	state->acc = ekf2vec(vscl(1.0f / GRAV, ekf_back->acc));

	struct vec rpy = quat2rpy(ekf_back->quat);
	state->attitude.roll = degrees(rpy.x);
	state->attitude.pitch = -degrees(rpy.y);
	state->attitude.yaw = degrees(rpy.z);

	state->attitudeQuaternion.x = ekf_back->quat.x;
	state->attitudeQuaternion.y = ekf_back->quat.y;
	state->attitudeQuaternion.z = ekf_back->quat.z;
	state->attitudeQuaternion.w = ekf_back->quat.w;

	// state->attitudeRate.roll = gyro[0];
	// state->attitudeRate.pitch = -gyro[1];
	// state->attitudeRate.yaw = gyro[2];
}

PARAM_GROUP_START(kalmanUSC)
  PARAM_ADD(PARAM_UINT8, rstWithExtPos, &rstWithExtPos)
PARAM_GROUP_STOP(kalmanUSC)