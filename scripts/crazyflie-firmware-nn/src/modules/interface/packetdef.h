#pragma once

/**
 *    ______
 *   / ____/________ _____  __  ________      ______ __________ ___
 *  / /   / ___/ __ `/_  / / / / / ___/ | /| / / __ `/ ___/ __ `__ \
 * / /___/ /  / /_/ / / /_/ /_/ (__  )| |/ |/ / /_/ / /  / / / / / /
 * \____/_/   \__,_/ /___/\__, /____/ |__/|__/\__,_/_/  /_/ /_/ /_/
 *                       /____/
 *
 * Crazyswarm advanced control firmware for Crazyflie
 *
 * Copyright (C) 2016 Wolfgang Hoenig and James Preiss,
 * University of Southern California
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
 * packetdef.h : definitions of all CRTP packets used in Crazyswarm.
                 centralized so it can be shared between server and vehicle.
 */

enum trajectory_type {
  TRAJECTORY_FIGURE8 = 0,
};


// hacks on hacks on hacks - should be fixed to do this in swig interface file
#ifndef SWIG

#include <stdint.h>



// ----------------------------------------------------------------------- //
//                            Vicon Positions                              //
//                       arrive on CRTP_PORT_POSEXT                        //
// ----------------------------------------------------------------------- //

static float const POSITION_LIMIT = 8.0f; // meters
typedef int16_t posFixed16_t;
typedef struct posFixed24_t
{
  uint8_t low;
  uint8_t middle;
  uint8_t high;
} posFixed24_t;


static const uint32_t INT24_MAX = 8388607;

static inline posFixed16_t position_float_to_fix16(float x)
{
  return (INT16_MAX / POSITION_LIMIT) * x;
}

static inline float position_fix16_to_float(posFixed16_t x)
{
  return (POSITION_LIMIT / INT16_MAX) * ((float)x);
}

static inline posFixed24_t position_float_to_fix24(float x)
{
  uint32_t val = (INT24_MAX / POSITION_LIMIT) * (x + POSITION_LIMIT);
  posFixed24_t result;
  result.low = (val >> 0) & 0xFF;
  result.middle = (val >> 8) & 0xFF;
  result.high = (val >> 16) & 0xFF;
  return result;
}

static inline float position_fix24_to_float(posFixed24_t x)
{
  uint32_t val = (x.low) | (x.middle << 8) | (x.high << 16);
  return (POSITION_LIMIT / INT24_MAX) * ((float)val) - POSITION_LIMIT;
}

// special id for the "interactive object" e.g. in "avoid human" demo
// this id is reserved and should not be used for a Crazyflie
static int const INTERACTIVE_ID = 0xFF;

struct data_vicon {
  struct {
    uint8_t id;
    posFixed24_t x; // m
    posFixed24_t y; // m
    posFixed24_t z; // m
    uint32_t quat; // compressed quat, see quatcompress.h
  } __attribute__((packed)) pose[2];
} __attribute__((packed));

struct data_packed_drops {
  uint64_t seq;
} __attribute__((packed));



// ----------------------------------------------------------------------- //
//                              Trajectories                               //
//                     arrive on CRTP_PORT_TRAJECTORY                      //
// ----------------------------------------------------------------------- //

// TODO explain where this is used
enum TrajectoryCommand_e {
  COMMAND_RESET_POLY              = 0,
  COMMAND_ADD_POLY                = 1,
  COMMAND_START_POLY              = 2,
  COMMAND_TAKEOFF                 = 3,
  COMMAND_LAND                    = 4,
  COMMAND_HOVER                   = 5,
  COMMAND_GOHOME                  = 6,
  COMMAND_SET_ELLIPSE             = 7,
  COMMAND_START_ELLIPSE           = 8,
  COMMAND_START_CANNED_TRAJECTORY = 9,
  COMMAND_START_AVOID_TARGET      = 10,
  COMMAND_SET_GROUP               = 11,
};

// multi-packet piecewise polynomial definition
struct data_add_poly {
  uint8_t id;
  uint8_t offset:5;
  uint8_t size:3;
  float values[6];
} __attribute__((packed));

struct data_start_poly {
  uint8_t group;
  bool reversed;
} __attribute__((packed));

// "take this much time to go here, then hover"
struct data_hover {
  float x; // m
  float y; // m
  float z; // m
  float yaw; // deg
  float duration; // sec
} __attribute__((packed));


// vertical takeoff from current x-y position to given height
struct data_takeoff {
  uint8_t group;
  float height; // m (absolute)
  uint16_t time_from_start; // ms
} __attribute__((packed));


// vertical land from current x-y position to given height
struct data_land {
  uint8_t group;
  float height; // m (absolute)
  uint16_t time_from_start; // ms
} __attribute__((packed));

struct data_gohome {
  uint8_t group;
} __attribute__((packed));

struct data_set_ellipse {
  posFixed16_t centerx;
  posFixed16_t centery;
  posFixed16_t centerz;
  posFixed16_t majorx;
  posFixed16_t majory;
  posFixed16_t majorz;
  posFixed16_t minorx;
  posFixed16_t minory;
  posFixed16_t minorz;
  float period;
} __attribute__((packed));

struct data_start_ellipse {
  uint8_t group;
} __attribute__((packed));

struct data_start_canned_trajectory {
  uint8_t group;
  uint16_t trajectory; // one of trajectory_type
  float timescale; // negative indicates reversed
} __attribute__((packed));

struct data_start_avoid_target {
  float x;
  float y;
  float z;
  float max_displacement;
  float max_speed;
};

struct data_set_group {
  uint8_t group;
} __attribute__((packed));

#endif // ifndef SWIG
