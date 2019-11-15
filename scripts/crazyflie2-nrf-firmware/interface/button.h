/**
 *    ||          ____  _ __
 * +------+      / __ )(_) /_______________ _____  ___
 * | 0xBC |     / __  / / __/ ___/ ___/ __ `/_  / / _ \
 * +------+    / /_/ / / /_/ /__/ /  / /_/ / / /_/  __/
 *  ||  ||    /_____/_/\__/\___/_/   \__,_/ /___/\___/
 *
 * Crazyflie 2.0 NRF Firmware
 * Copyright (c) 2014, Bitcraze AB, All rights reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.
 */
#ifndef __BUTTON_H__
#define __BUTTON_H__

#include "pinout.h"
#include <nrf.h>

#define BUTTON_INIT() NRF_GPIO->PIN_CNF[BUTTON_PIN] = GPIO_PIN_CNF_DIR_Input | (GPIO_PIN_CNF_PULL_Pullup << GPIO_PIN_CNF_PULL_Pos) | (GPIO_PIN_CNF_SENSE_Low << GPIO_PIN_CNF_SENSE_Pos)

#define BUTTON_READ() ((NRF_GPIO->IN >> BUTTON_PIN) & 1UL)

#define BUTTON_PRESSED 0UL
#define BUTTON_RELEASED 1UL

#define BUTTON_LONGPRESS_TICK 1000

typedef enum {buttonIdle=0, buttonShortPress, buttonLongPress} ButtonEvent;

void buttonInit(ButtonEvent initialEvent);

void buttonProcess();

ButtonEvent buttonGetState();

#endif //__BUTTON_H__
