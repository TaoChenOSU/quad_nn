#pragma once

#include <math.h>
#include <stdbool.h> 

// #include "mathconstants.h"



// --------------------------------------------- //
// in-place hacks to reduce math3d.h stack usage //
// --------------------------------------------- //


// sadly, GCC does not optimize the pass-by-value well in mmult
static inline void mmultp(struct mat33 const *a, struct mat33 const *b, struct mat33 *ab) {
	for (int i = 0; i < 3; ++i) {
		for (int j = 0; j < 3; ++j) {
			float accum = 0;
			for (int k = 0; k < 3; ++k) {
				accum += a->m[i][k] * b->m[k][j];
			}
			ab->m[i][j] = accum;
		}
	}
}

static inline void maddridgei(struct mat33 *a, float d) {
	a->m[0][0] += d;
	a->m[1][1] += d;
	a->m[2][2] += d;
}

// this operation is used a lot in the EKF and gcc was not optimizing it well enough :(
static inline struct mat33 aXplusbI(float a, struct mat33 const *X, float b)
{
	struct mat33 m;

	m.m[0][0] = a * X->m[0][0] + b;
	m.m[0][1] = a * X->m[0][1];
	m.m[0][2] = a * X->m[0][2];
	
	m.m[1][0] = a * X->m[1][0];
	m.m[1][1] = a * X->m[1][1] + b;
	m.m[1][2] = a * X->m[1][2];

	m.m[2][0] = a * X->m[2][0];
	m.m[2][1] = a * X->m[2][1];
	m.m[2][2] = a * X->m[2][2] + b;

	return m;
}


// --------------------------------------------- //
//             big matrix operations             //
// --------------------------------------------- //


#define AS_1D(x) (&(x)[0][0])

#define ZEROARR(a) \
do { \
	unsigned char *ac = (unsigned char *)a; \
	unsigned char *end = ac + sizeof(a); \
	for (; ac != end; ++ac) { \
		*ac = 0; \
	} \
} while(false);

#define COPYMAT(dst, src) \
do { \
	float const *from = AS_1D(src); \
	float const *end = from + sizeof(src) / sizeof(float); \
	float *to = AS_1D(dst); \
	for (; from != end; ++from) { \
		*to = *from; \
		++to; \
	} \
} while(false);

#define IND(A, m, n, r, c) ((A)[(r) * (n) + (c)])
#define INDT(A, m, n, r, c) IND(A, n, m, c, r)

#define SGEMM_LOOP(IA, IB) \
for (int i = 0; i < m; ++i) { \
	for (int j = 0; j < n; ++j) { \
		float accum = 0; \
		for (int w = 0; w < k; ++w) { \
			accum += IA(a, m, k, i, w) * IB(b, k, n, w, j); \
		} \
		IND(c, m, n, i, j) = beta * IND(c, m, n, i, j) + alpha * accum; \
	} \
}

static inline void sgemm(char atrans, char btrans, int m, int n, int k, float alpha, float const *a, float const *b, float beta, float *c)
{
	if (atrans == 'n' && btrans == 'n') {
		SGEMM_LOOP(IND, IND);
	}
	if (atrans == 'n' && btrans == 't') {
		SGEMM_LOOP(IND, INDT);
	}
	if (atrans == 't' && btrans == 'n') {
		SGEMM_LOOP(INDT, IND);
	}
	if (atrans == 't' && btrans == 't') {
		SGEMM_LOOP(INDT, INDT);
	}
}

#define SGEMM2D(at, bt, m, n, k, alpha, a, b, beta, c) sgemm(at, bt, m, n, k, alpha, AS_1D(a), AS_1D(b), beta, AS_1D(c))

static inline void zeromat(float *a, int m, int n)
{
	for (int i = 0; i < m * n; ++i) {
		a[i] = 0;
	}
}

static inline void eyeN(float *a, int n)
{
	zeromat(a, n, n);
	for (int i = 0; i < n; ++i) {
		a[n * i + i] = 1.0f;
	}
}
