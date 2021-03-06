/* filename: K0cFind1.c */
/* description: This program finds the value of K0c, the critical value of K0, which is the bare dimensionless superfluidity ratio at the smallest length scale a0.
 */
/* ext files: derk1.c */
/* author: Andrew Forrester <aforrester@ucla.edu>  */

// NOTE: Be sure that N=2 in derk1.c when compiling.


/* RESULTS:
       Given Cc = 1.03,
       Previous calculated values have been K0c = 0.309146998265557
                                                  0.3091469984282580
       The most updated calculation gets    K0c = 0.3091469984216758

Further Results:
Cc	K0c
1.20	0.2805443089651988
1.10	0.2964689389987769
1.03	0.3091469984216758
1.00	0.3150360068926090
0.90	0.3370353710663324
0.80	0.3636228655823345
0.70	0.3965669728967951
0.60	0.4387310072100319
0.55	0.4646970470439841
0.50	0.4951082899772983
0.40	0.5753434296585114
0.30	0.7010909420810494
0.20	0.9346549781449027
0.10	1.576187055119766
0.00	5.105045166053440
*/


/*  Function preparation  */
/*=========================================================================*/

#include <stdio.h>
#include <math.h>

#define IN
#define OUT
#define INOUT
#define PI        3.141592653589793
#define PISQ      9.869604401089359
#define A         4.0*PI*PI*PI/3.0
#define Cc        1.03
#define precision 1e-14
#define K01       0.3
#define N         2

typedef struct {
	double l;
	double tempv;
	double thrmv[N];
} STATE;

typedef struct {
	double arr[N];
} RETARRAY;



/*  Function prototypes  */
/*=========================================================================*/
//   derk(func(),calculated,Dl,n)
//   ringrecrel(l,z)

extern STATE derk(RETARRAY (*func)(double l, double z[]), STATE calculated, double Dl, unsigned n);

RETARRAY ringrecrel(double l, double z[]);



/*  Function definitions  */
/*=========================================================================*/

main(){
	double K0,DK0,oldK,oldy;
	STATE estimated;

	/* Initial guess for K0, and pre-initial adjustment of K0 */
	K0 = K01;
	DK0 = 0.1;  // It's a "pre-initial" adjustment because we change it before using it.

	/* Adjust K0 by finer and finer amounts until the adjustment DK0 reaches the desired precision */
	while(DK0>precision){
		/* Increase precision of adjustment of K0 */
		DK0 = DK0/2;

		/* Initialize lengthscale (and energy) values */
		estimated.l = 0;
		// estimated.thrmv[2] = 0;

		/* Initialize would-be temperature-dependent values at initial lengthscale */
		estimated.thrmv[0] = K0;
		estimated.thrmv[1] = exp(-PISQ*K0*Cc);
		oldK = estimated.thrmv[0];
		oldy = estimated.thrmv[1];

		/* Find whether K0 should be increased or decreased by DK0 to approach K0c */
		while(estimated.l>=0){
			/* Calculate next estimated state, incrementing lengthscale */
			estimated = derk(IN ringrecrel, INOUT estimated, IN 0.0001, IN N);  // Dl=0.0001, n=2

			/* K diverges right away (before l=6.0), K0 too high */
			if(estimated.thrmv[0]>5.0) {
				K0 = K0-DK0;
				//printf("K exploded\n");
				break;
			}
			/* K is decreasing/increasing after l=6.0, K0 too low/high */
			if(estimated.thrmv[0]<oldK && estimated.l>6.0) {
				K0 = K0+DK0;
				//printf("K decreasing\n");
				break;
			}
			if(estimated.thrmv[0]>oldK && estimated.l>6.0) {
				K0 = K0-DK0;
				//printf("K increasing\n");
				break;
			}

			/* If the above conditions have not yet been found, prepare for comparison with the next estimated state at a larger lengthscale */
			oldK = estimated.thrmv[0];
			oldy = estimated.thrmv[1];
		}
		printf("%1.15e %1.15e\n",K0,DK0);
	}
	
}



RETARRAY ringrecrel(double l, double z[]){
	RETARRAY dzdl;

	dzdl.arr[0] = z[0]-A*z[1]*z[0]*z[0];
	dzdl.arr[1] = z[1]*(6.0-PISQ*z[0]*(1.0-0.6*log(z[0])));
	// dzdl.arr[2] = -PI*z[1]*exp(-3.0*l);

	return dzdl;
}
