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
#ifndef __DS2431_H__
#define __DS2431_H__


/* Low level memory access */
int ds2431ReadScratchpad(int bus, uint16_t *t, uint8_t *es,
                         unsigned char *buffer, int length, uint16_t *crc16);
int ds2431WriteScratchpad(int bus, uint16_t t, unsigned char *buffer, int length);
int ds2431ReadMemory(int bus, uint16_t t, unsigned char *buffer, int length);
int ds2431CopyScratchpad(int bus, uint16_t t, uint8_t es);

/* High level for writing in the memory */
int ds2431WriteMemory(int bus, uint16_t t, unsigned char *buffer, int length);

#endif //__DS2431_H__

