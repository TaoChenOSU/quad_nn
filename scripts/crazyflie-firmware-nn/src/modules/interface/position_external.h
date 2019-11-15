/**
 *    ||          ____  _ __
 * +------+      / __ )(_) /_______________ _____  ___
 * | 0xBC |     / __  / / __/ ___/ ___/ __ `/_  / / _ \
 * +------+    / /_/ / / /_/ /__/ /  / /_/ / / /_/  __/
 *  ||  ||    /_____/_/\__/\___/_/   \__,_/ /___/\___/
 *
 * Crazyflie control firmware
 *
 * Copyright (C) 2016 Bitcraze AB
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, in version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 *
 */
#ifndef POSITION_EXTERNAL_H_
#define POSITION_EXTERNAL_H_

#include <stdint.h>
#include "math3d.h"

void positionExternalInit(void);
bool positionExternalTest(void);

void positionExternalGetLastData(
  float* x,
  float* y,
  float* z,
  float* q0,
  float* q1,
  float* q2,
  float* q3,
  float* vx,
  float* vy,
  float* vz,
  uint16_t* last_time_in_ms);

void positionExternalUpdateDt();

extern bool positionExternalFresh;
extern bool positionExternalFresh2;

// position of the "interactive object" i.e. in "avoid human" demo
typedef void (*positionInteractiveCallback)(struct vec const *, struct quat const *);
void setPositionInteractiveCallback(positionInteractiveCallback cb);

#endif /* POSITION_EXTERNAL_H_ */
