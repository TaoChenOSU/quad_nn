#ifndef __USDDECK_H__
#define __USDDECK_H__

#include <stdint.h>
#include <stdbool.h>

enum usddeckLoggingMode_e
{
  usddeckLoggingMode_Disabled = 0,
  usddeckLoggingMode_SynchronousStabilizer,
  usddeckLoggingMode_Asyncronous,
};

// returns true if logging is enabled
bool usddeckLoggingEnabled(void);

// returns the current logging mode
enum usddeckLoggingMode_e usddeckLoggingMode(void);

// returns the desired logging frequency
int usddeckFrequency(void);

// For synchronous logging: add a new log entry
void usddeckTriggerLogging(void);

// returns size of last logging file
uint32_t usddeckLastLoggingFileSize(void);

// read numBytes at offset into data
uint32_t usddeckLastLoggingFileRead(uint8_t* data, uint32_t offset, uint32_t numBytes);

#endif //__USDDECK_H__
