/*  File Comments  */
/*=========================================================================*/

/* FILENAME: a0VsP_points.c */
/* AUTHOR: Andrew Forrester <aforrester@ucla.edu> */
/* DESCRIPTION:
   * This C program calculates points of a0c (c = critical, at the critical lambda temperature) as function of pressure, and spits the data into a file to be plotted by plot_TheoryVsGlaberson_a0VsP.gnu.

   Output:
   * This program returns text file of data in a two dimensional array.
*/
/* COMPILE NOTES:
   * 
*/


/*  Function Preparation  */
/*=========================================================================*/

/* Standard routine header files */
#include <stdio.h>

/* Program parameters/inputs */

// Parameters for Tc(P):
#define Tc0    2.173494256
#define Tc1   -0.009824996
#define Tc2   -0.000118194
#define Tc3   -0.000000437
#define Tc4    0.000000007

// Parameters for rho(T,P):
#define rho00    145.145109496329000
#define rho10   -0.097653969305915
#define rho20    0.334163407001684
#define rho30   -0.446930785976304
#define rho40    0.181879478545246
#define rho01    1.744776044955830
#define rho11   -0.091953899317905
#define rho21    0.179844560873926
#define rho31   -0.133606331352667
#define rho41    0.041022551424992
#define rho02   -0.049165537969017
#define rho12    0.007106988980704
#define rho22   -0.008230542254959
#define rho32    0.000609542602247
#define rho42    0.001149167753923
#define rho03    0.001341503764375
#define rho13   -0.000362007479156
#define rho23    0.000358809384119
#define rho33    0.000064818395436
#define rho43   -0.000104112551303
#define rho04   -0.000016990729415
#define rho14    0.000005538203683
#define rho24   -0.000003157734111
#define rho34   -0.000004999673069
#define rho44    0.000003413312235



/*  Function Definitions  */
/*=========================================================================*/

main(){
	int s;
	double P,K0c;
	double T,Tc,rho,a0,a00;  // a00 = a0 at P=0, found from fit of curve obtained with a0=1
	FILE *outfile;

	/* Name/open output file, and print headings for data to screen and output file */
	outfile = fopen("a0VsP.dat","w");
	fprintf(outfile,"%s\t%s\t%s\t%s\t%s\t%s\n","#P","K0c","Tc","rho","a0","a0/a00");
	printf(         "%s\t%s\t%s\t%s\t%s\t%s\n", "P","K0c","Tc","rho","a0","a0/a00");

	/* Progress through 7 pressures (and associated values of Cc,K0c), where a data file will be produced for each pressure*/
	for(s=1; s<=7; s++){
		switch(s){
		  case 1:
			P   = 0.050;  // pressure in bars
			K0c = 0.295611433115442;
			break;
		  case 2:
			P   = 1.646;  // pressure in bars
			K0c = 0.303870330660806;
			break;
		  case 3:
			P   = 7.328;  // pressure in bars
			K0c = 0.335617836037364;
			break;
		  case 4:
			P   = 15.031;  // pressure in bars
			K0c = 0.385625265795951;
			break;
		  case 5:
			P   = 18.180;  // pressure in bars
			K0c = 0.408889237394402;
			break;
		  case 6:
			P   = 22.533;  // pressure in bars
			K0c = 0.444331744979223;
			break;
		  case 7:
			P   = 25.868;  // pressure in bars
			K0c = 0.474486704164683;
			break;
		}

		Tc = Tc0 + Tc1*P + Tc2*P*P + Tc3*P*P*P + Tc4*P*P*P*P;
		T = Tc;
		rho = rho00         + rho10*T         + rho20*T*T         + rho30*T*T*T         + rho40*T*T*T*T 
		    + rho01*P       + rho11*T*P       + rho21*T*T*P       + rho31*T*T*T*P       + rho41*T*T*T*T*P 
		    + rho02*P*P     + rho12*T*P*P     + rho22*T*T*P*P     + rho32*T*T*T*P*P     + rho42*T*T*T*T*P*P 
		    + rho03*P*P*P   + rho13*T*P*P*P   + rho23*T*T*P*P*P   + rho33*T*T*T*P*P*P   + rho43*T*T*T*T*P*P*P 
		    + rho04*P*P*P*P + rho14*T*P*P*P*P + rho24*T*T*P*P*P*P + rho34*T*T*T*P*P*P*P + rho44*T*T*T*T*P*P*P*P;
		a0 = 549*Tc*K0c/rho;  // in angstroms
		// a0 = 549*Tc*K0c/(rho*0.7);  // in angstroms
		if(P==0.050) a00=a0;
		  
		/* Print data to screen and output file */
		fprintf(outfile,"%17.15g\t%17.15g\t%17.15g\t%17.15g\t%17.15g\t%17.15g\n",P,K0c,Tc,rho,a0,a0/a00);
		printf(         "%17.15g\t%17.15g\t%17.15g\t%17.15g\t%17.15g\t%17.15g\n",P,K0c,Tc,rho,a0,a0/a00);
	}

	/* Close output file */
	fclose(outfile);
}
