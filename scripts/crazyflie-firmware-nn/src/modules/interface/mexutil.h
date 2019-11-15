#pragma once

#include <math.h>

#ifdef MATLAB_MEX_FILE
	#include <mex.h>
	#include <stdio.h>
	#define MEXUTIL_PRINTF mexPrintf
#else
	#define MEXUTIL_PRINTF
#endif

#define ERRLEN 1024

#define mxPrintVec(VAR) MEXUTIL_PRINTF("%s: (%f, %f, %f)\n", #VAR, (VAR).x, (VAR).y, (VAR).z);

#ifdef MATLAB_MEX_FILE
static void checknan(char const *name, float const *f, int n)
{
	char errbuf[ERRLEN];
	for (int i = 0; i < n; ++i) {
		if (!isfinite(f[i]) && (f[i] == f[i])) {
			snprintf(errbuf, ERRLEN, "%s has infinity\n", name);
			mexErrMsgIdAndTxt("Crazyswarm:EKF", errbuf);
			return;
		}
		if (f[i] != f[i]) {
			snprintf(errbuf, ERRLEN, "%s has NaN\n", name);
			mexErrMsgIdAndTxt("Crazyswarm:EKF", errbuf);
			return;
		}
	}
}
#else
#define checknan(a, b, c)
#endif

/* currently unused
static void checksym(char const *name, float const *f, int n)
{
#ifdef MATLAB_MEX_FILE
	checknan(name, f, n * n);
	char errbuf[ERRLEN];
	for (int i = 0; i < n; ++i) {
		for (int j = 0; j < n; ++j) { // yes it does work twice, making idiot-proof. i'm an idiot.
			if (f[n * i + j] != f[n * j + i]) {
				snprintf(errbuf, ERRLEN, "%s is not symmetric\n", name);
				mexErrMsgIdAndTxt("Crazyswarm:EKF", errbuf);
				return;
			}
		}
	}
#endif
}
*/
