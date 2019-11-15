#ifndef __ESTIMATOR_KALMAN_USC_H__
#define __ESTIMATOR_KALMAN_USC_H__

#include <stdint.h>
#include "stabilizer_types.h"

void estimatorKalmanUSCInit(void);
bool estimatorKalmanUSCTest(void);
void estimatorKalmanUSC(state_t *state, sensorData_t *sensors, control_t *control, const uint32_t tick);

#endif // __ESTIMATOR_KALMAN_USC_H__