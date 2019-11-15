
#ifndef __CONTROLLER_NN_H__
#define __CONTROLLER_NN_H__

#include "stabilizer_types.h"
#include "network_evaluate.h"

void controllerNNInit(void);
bool controllerNNTest(void);
void controllerNN(control_t *control, setpoint_t *setpoint,
                                         const sensorData_t *sensors,
                                         const state_t *state,
                                         const uint32_t tick);

void thrusts2PWM(control_t_n *control_n, 
	int *PWM_0, int *PWM_1, int *PWM_2, int *PWM_3);

float scale(float v);

float clip(float v, float min, float max);

void controllerNNEnableBigQuad(void);

#endif //__CONTROLLER_NN_H__

