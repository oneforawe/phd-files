//  File Comments  //
//=========================================================================//

/* FILENAME: 3Dvlt_macro_noifthen.c */
/* VERSION: 1 (2011 Oct 27 - ...)
            (With the y-equation if-then statement commented out for recalculating thesis data.)
            Now you have your choice of B and THETA, but remember to change 6 or 9 in the recursion relations.
            Back to old THETA (0.6) and old Kthresh (5).
            With new recursion relations (new B and new y definition with 9 instead of 6) and new THETA (0.6918), and new results from K0cFind (and trying Kthresh=10 instead of 5).
            This program was formerly called vlt_ThermStates.c. */
/* AUTHOR: Andrew Forrester <aforrester@ucla.edu> */
/* DESCRIPTION:
   * This C program calculates macroscopic (or system-scale) thermodynamic properties of a superliquid helium film at various temperatures, given a certain chosen system size lmax, and puts the results into one output file.
   * This program calculates macroscopic equilibrium thermodynamic (or quasi-thermo-static) properties of a 2D system of superfluid (a thin layer of liquid 4He), using the Kosterlitz-Thouless (KT) theory, which could be considered a "vortex pair theory" (vpt, as opposed to the 3D vortex loop theory, vlt), hence the name "2Dvpt_macro.c".  By macroscopic, we mean that the quantities calculated are only recorded at the largest length scale, lmax (the size of the system), rather than recording all the renormalized values from the smallest scale (l=0 or a=a0) all the way up to lmax.
   * This program starts from a particular initial condition at the smallest length scale a0 and estimates the conditions at larger length scales for particular temperatures using differential recursion relations (obtained from the KT vortex-pair He-transition theory) and a 4th-order Runge-Kutta method.
   * The system is a thin film of liquid helium (4He) at atmospheric pressure, under or near the critical transition temperature Tc = Tkt separating normal fluid and superfluid phases.
   * The properties calculated are the quantities K, K/K0=sigma_s/sigma_0, y, and Gamma (not e?) as functions of temperature T (or Tfrac or tempv), which depend on the maximum length scale lmax (or amax) chosen.  See the Program Notes below the code for explanation of constants, variables, and functions.
*/
/* EXT FILES: none */
/* COMPILE NOTES:
   * To compile, type "g++ -lm 3Dvlt_macro_noifthen.c" without the quotes; then to run, type "./a.out".
   * NOTE: Be sure lsteps is divisible by ldatamax.
*/



//  Function Preparation  //
//=========================================================================//

// Standard routine header files //
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

// Constants //
const double PI    = 3.14159265358979323846;
const double PISQ  = 9.86960440108935861883;
const double PICU  = 31.00627668029981620634;
const double B     = 4.0*PICU/3.0;
//const double B     = 2.0*PICU*PISQ/3.0;
//const double B     = 100.0*2.0*PICU*PISQ/3.0;  // just to see if this fixes the pressures...
const double THETA = 0.6;
//const double THETA = 0.6918;

// Program parameters/inputs //
const int    N        = 3;         //  Selecting quantities to be calculated (2 -> K and y/G; 3 -> K, y/G, and e)
const int    Op       = 1;         //  Option (1 -> hand-picked temp's; else temperature-spread formulas)
const double lmax     = 10.0;      //  1  //  maximum of the length scale l (potentially approximate)
const int    lsteps   = 10000;     //  1250, 5000, 100000 //  lsteps = lmax/dl = 10/0.0001 = 100,000  (make sure this is divisible by ldatamax)
const int    lpts     = lsteps+1;  //  from l=0 to l=lmax, inclusive (incl. the boundary-condition-enforcing pnt, there are lpts+1 "l" pnts)
const int    ldatamax = 10;        //  (for bug check in this program) 50,100 //  max number of data points recorded per temperature examined
const double a0       = 1.0;       //  a0 in units of a0 (!)
const double a03      = a0*a0*a0;  //  a0 to the third power
const double a06      = a03*a03;   //  a0 to the sixth power
const double Kthresh  = 5.0;       //  (use this when NOT using the if-then code in EqRecRel)



//  Function Prototypes  //
//=========================================================================//

// rk4((*f)(),*x,y[],h,n);
// EqRecRel(x,z,dzdx,n);
void rk4(void (*f)(double, double*, double*, unsigned int), double *x, double y[], double h, unsigned n);
void EqRecRel(double x, double z[], double dzdx[], unsigned n);



//  Function Definitions  //
//=========================================================================//

int main(){
	// Main function definitions //
	int    s,i,j, notdone=true, TempLabelOp;
	double dblsteps=lsteps, dl=lmax/dblsteps;
	double x, l[lpts];
	double Tfrac, tempv;
	double z[N], K[lpts], y[lpts], e[lpts], G[lpts];
	double K0, y0;
	double Kr[lpts], Cc, K0c;
	FILE   *outfile;
	char   *filename;

	// Progress through sets of values of Cc and K0c, where a data file will be produced for each set //
	for(s=1; s<=2; s++){
	//for(s=1; s<=1; s++){
		switch(s){
			// (Old) from plots_earlyequil/plots09/fit_Pdep_Cc_results.dat and 3Dvlt_K0cFind.c //
			//case 1:	Cc = 1.10500797392886;	K0c = 0.295614012972922;	break;  // P = 0.050;

			/* (Real old) Using settings from ring3.c for comparison (CompareOld) //
			case 1:	Cc = 1.03;	K0c = 0.3091469984216758;	break;  // P = ??;*/


			/* Testing the renormalization flow idea: if I set lmax very high, will I see deviations in the expected pattern? */
			// Also, does the 3Dvlt_K0cFind3_Plot.c method of finding K0c change the result much? //
			// Values from 3Dvlt_K0cFind.c
			//case 1:	Cc = 1.10;	K0c = 0.296468939006784;	break;
			//case 2:	Cc = 0.40;	K0c = 0.575343429658511;	break;
			// Values from 3Dvlt_K0cFind3_Plot.c
			//3Dvlt_K0cFind3_Plot_Output2_OpC2_uncert1e-10.dat  const dl
			//case 1:	Cc = 1.10;	K0c = 0.29646894595846918;	break;
			//case 2:	Cc = 0.40;	K0c = 0.57534343604480565;	break;
			//3Dvlt_K0cFind3_Plot_Output7_OpC4_uncert1e-15.dat  limtd ds
			case 1:	Cc = 1.10;	K0c = 0.29646893900647414;	break;
			case 2:	Cc = 0.40;	K0c = 0.5753434296488823;	break;


			// I'm using this next set to compare with the output from 3Dvlt_macro_cp.c
			// using normal settings (with "noifthen" in 3Dvlt_K0cFind.c v9 Output33, 3Dvlt_macro_noifthen.c,
			// and fits in results/plots_macro/3D_12_Thesis/) //
			//case 1:		Cc = 1.10500984397513;	K0c = 0.295613694950781;	break;  //  P =  0.05;
			/*case 2:		Cc = 0.907367789194129;	K0c = 0.335274865837589;	break;  //  P =  7.27;
			case 3:		Cc = 0.792892311014899;	K0c = 0.365728618362282;	break;  //  P = 12.13;
			case 4:		Cc = 0.670143488818985;	K0c = 0.408018542395396;	break;  //  P = 18.06;
			case 5:		Cc = 0.561589528283278;	K0c = 0.458322835247628;	break;  //  P = 24.10;
			case 6:		Cc = 0.482872449849904;	K0c = 0.506776012431355;	break;  //  P = 29.09;*/

			/* from vlt_K0cFind.c, normal settings (from 3Dvlt_K0cFind.c v9 Ouput26) //
			case 1:		Cc = 1.20;	K0c = 0.280544308975229;	break;
			case 2:		Cc = 1.10;	K0c = 0.296468939006784;	break;
			case 3:		Cc = 1.06;	K0c = 0.30354071294185;		break;
			case 4:		Cc = 1.05;	K0c = 0.305379423608169;	break;
			case 5:		Cc = 1.04;	K0c = 0.307247922776542;	break;
			case 6:		Cc = 1.03;	K0c = 0.309146998428258;	break;
			case 7:		Cc = 1.02;	K0c = 0.311077467512369;	break;
			case 8:		Cc = 1.01;	K0c = 0.313040177313466;	break;
			case 9:		Cc = 1.00;	K0c = 0.315036006898571;	break;
			case 10:	Cc = 0.99;	K0c = 0.317065868648624;	break;
			case 11:	Cc = 0.98;	K0c = 0.319130709880376;	break;
			case 12:	Cc = 0.97;	K0c = 0.321231514565087;	break;
			case 13:	Cc = 0.90;	K0c = 0.337035371070207;	break;
			case 14:	Cc = 0.80;	K0c = 0.36362286558404;		break;
			case 15:	Cc = 0.70;	K0c = 0.39656697289679;		break;
			case 16:	Cc = 0.60;	K0c = 0.438731007210038;	break;
			case 17:	Cc = 0.55;	K0c = 0.464697047043989;	break;
			case 18:	Cc = 0.50;	K0c = 0.495108289977297;	break;
			case 19:	Cc = 0.40;	K0c = 0.575343429658511;	break;
			case 20:	Cc = 0.30;	K0c = 0.701090942081052;	break;
			case 21:	Cc = 0.20;	K0c = 0.934654978144903;	break;
			case 22:	Cc = 0.10;	K0c = 5.00024331731314;		break;*/

			/* from vlt_K0cFind.c using vltRecRel with B' = 2B: // redo them */
			/* from vlt_K0cFind.c using vltRecRel with B' = B/2: // redo them */
			/* from 3Dvlt_K0cFind.c v9 Ouput16  THETA=0.6918 //
			case 1:		Cc = 1.20;	K0c = 0.570128905968232;	break;
			case 2:		Cc = 1.10;	K0c = 0.609624403544002;	break;
			case 3:		Cc = 1.06;	K0c = 0.627402869083681;	break;
			case 4:		Cc = 1.05;	K0c = 0.632049319765435;	break;
			case 5:		Cc = 1.04;	K0c = 0.636781126306524;	break;
			case 6:		Cc = 1.03;	K0c = 0.641600757532719;	break;
			case 7:		Cc = 1.02;	K0c = 0.646510779557328;	break;
			case 8:		Cc = 1.01;	K0c = 0.651513860647825;	break;
			case 9:		Cc = 1.00;	K0c = 0.65661277638855;		break;
			case 10:	Cc = 0.99;	K0c = 0.661810415160773;	break;
			case 11:	Cc = 0.98;	K0c = 0.66710978396317;		break;
			case 12:	Cc = 0.97;	K0c = 0.672514014597681;	break;
			case 13:	Cc = 0.90;	K0c = 0.713572285567344;	break;
			case 14:	Cc = 0.80;	K0c = 0.78423032930147;		break;
			case 15:	Cc = 0.70;	K0c = 0.874472014212173;	break;
			case 16:	Cc = 0.60;	K0c = 0.994182882795409;	break;
			case 17:	Cc = 0.55;	K0c = 1.06782675904612;		break;
			case 18:	Cc = 0.50;	K0c = 1.15153714510007;		break;
			case 19:	Cc = 0.40;	K0c = 1.37012546909709;		break;
			case 20:	Cc = 0.30;	K0c = 1.71613585989048;		break;
			case 21:	Cc = 0.20;	K0c = 2.37267225339063;		break;
			case 22:	Cc = 0.10;	K0c = 4.20556959773401;		break;*/
			/* from 3Dvlt_K0cFind.c v9 Ouput18  THETA=0.6 //
			case 1:		Cc = 1.20;	K0c = 0.581338115852507;	break;
			case 2:		Cc = 1.10;	K0c = 0.620937971001332;	break;
			case 3:		Cc = 1.06;	K0c = 0.63874148806135;		break;
			case 4:		Cc = 1.05;	K0c = 0.643392287493778;	break;
			case 5:		Cc = 1.04;	K0c = 0.648127593939526;	break;
			case 6:		Cc = 1.03;	K0c = 0.652949830522797;	break;
			case 7:		Cc = 1.02;	K0c = 0.657861515066906;	break;
			case 8:		Cc = 1.01;	K0c = 0.662865264792018;	break;
			case 9:		Cc = 1.00;	K0c = 0.667963801296259;	break;
			case 10:	Cc = 0.99;	K0c = 0.673159955840383;	break;
			case 11:	Cc = 0.98;	K0c = 0.678456674957857;	break;
			case 12:	Cc = 0.97;	K0c = 0.683857026414029;	break;
			case 13:	Cc = 0.90;	K0c = 0.724847465766739;	break;
			case 14:	Cc = 0.80;	K0c = 0.795233656032212;	break;
			case 15:	Cc = 0.70;	K0c = 0.884851298044873;	break;
			case 16:	Cc = 0.60;	K0c = 1.00326128477802;		break;
			case 17:	Cc = 0.55;	K0c = 1.07550489711638;		break;
			case 18:	Cc = 0.50;	K0c = 1.15822912454367;		break;
			case 19:	Cc = 0.40;	K0c = 1.37562590086347;		break;
			case 20:	Cc = 0.30;	K0c = 1.72106174708906;		break;
			case 21:	Cc = 0.20;	K0c = 2.37752155102254;		break;
			case 22:	Cc = 0.10;	K0c = 4.21133438353884;		break;*/
			/* from 3Dvlt_K0cFind.c v9 Ouput19 n=9 (not 6) THETA=0.6918  (B corrected to have PICU*PISQ, not PICU*PICU) //
			case 1:		Cc = 1.20;	K0c = 0.498562972851326;	break;
			case 2:		Cc = 1.10;	K0c = 0.530687769731962;	break;
			case 3:		Cc = 1.06;	K0c = 0.545094500265727;	break;
			case 4:		Cc = 1.05;	K0c = 0.54885450481241;		break;
			case 5:		Cc = 1.04;	K0c = 0.55268140135333;		break;
			case 6:		Cc = 1.03;	K0c = 0.556577091788424;	break;
			case 7:		Cc = 1.02;	K0c = 0.560543552154514;	break;
			case 8:		Cc = 1.01;	K0c = 0.564582836304841;	break;
			case 9:		Cc = 1.00;	K0c = 0.568697079811062;	break;
			case 10:	Cc = 0.99;	K0c = 0.572888504103663;	break;
			case 11:	Cc = 0.98;	K0c = 0.577159420867967;	break;
			case 12:	Cc = 0.97;	K0c = 0.58151223671442;		break;
			case 13:	Cc = 0.90;	K0c = 0.614499659693408;	break;
			case 14:	Cc = 0.80;	K0c = 0.67095405762665;		break;
			case 15:	Cc = 0.70;	K0c = 0.742552668182331;	break;
			case 16:	Cc = 0.60;	K0c = 0.836803151082566;	break;
			case 17:	Cc = 0.55;	K0c = 0.89628191724665;		break;
			case 18:	Cc = 0.50;	K0c = 0.9673144503113;		break;
			case 19:	Cc = 0.40;	K0c = 1.1499901528476;		break;
			case 20:	Cc = 0.30;	K0c = 1.42126933086456;		break;
			case 21:	Cc = 0.20;	K0c = 1.91970214803414;		break;
			case 22:	Cc = 0.10;	K0c = 3.26257962399342;		break;
			case 23:	Cc = 0.10;	K0c = 3.26257962399342;		break;*/
			/* from 3Dvlt_K0cFind.c v9 Ouput20 n=9 (not 6) THETA=0.6918  (B corrected to have PICU*PISQ, not PICU*PICU) //
			case 1:		Cc = 0.55;	K0c = 0.89628191724665;	break;
			case 2:		Cc = 0.50;	K0c = 0.9673144503113;	break;
			case 3:		Cc = 0.45;	K0c = 1.05206691666543;	break;
			case 4:		Cc = 0.40;	K0c = 1.1499901528476;	break;
			case 5:		Cc = 0.35;	K0c = 1.2691447320476;	break;
			case 6:		Cc = 0.30;	K0c = 1.42126933086456;	break;
			case 7:		Cc = 0.25;	K0c = 1.62576796989078;	break;
			case 8:		Cc = 0.20;	K0c = 1.91970214803414;	break;
			case 9:		Cc = 0.15;	K0c = 2.38612069089184;	break;
			case 10:	Cc = 0.10;	K0c = 3.26257962399342;	break;
			//case 11:	Cc = 0.05;	K0c = 5.04213152037451;	break;*/
			/* from 3Dvlt_K0cFind.c v9 Ouput21 n=9 (not 6) THETA=0.6918  (B reduced by half, let's see if pressures > 0 now) //
			case 1:		Cc = 1.20;	K0c = 0.45780362346966;		break;
			case 2:		Cc = 1.10;	K0c = 0.485776374670211;	break;
			case 3:		Cc = 1.06;	K0c = 0.498282873445011;	break;
			case 4:		Cc = 1.05;	K0c = 0.501543198623239;	break;
			case 5:		Cc = 1.04;	K0c = 0.504859964302718;	break;
			case 6:		Cc = 1.03;	K0c = 0.508234749473768;	break;
			case 7:		Cc = 1.02;	K0c = 0.511669194007461;	break;
			case 8:		Cc = 1.01;	K0c = 0.51516500165271;		break;
			case 9:		Cc = 1.00;	K0c = 0.518723943213381;	break;
			case 10:	Cc = 0.99;	K0c = 0.522347859918265;	break;
			case 11:	Cc = 0.98;	K0c = 0.526038666997753;	break;
			case 12:	Cc = 0.97;	K0c = 0.52979835748223;		break;
			case 13:	Cc = 0.90;	K0c = 0.558230668306958;	break;
			case 14:	Cc = 0.80;	K0c = 0.606659079593848;	break;
			case 15:	Cc = 0.70;	K0c = 0.667704634783972;	break;
			case 16:	Cc = 0.60;	K0c = 0.747511018097726;	break;
			case 17:	Cc = 0.55;	K0c = 0.797592293397978;	break;
			case 18:	Cc = 0.50;	K0c = 0.857149044686922;	break;
			case 19:	Cc = 0.40;	K0c = 1.01865407868901;		break;
			case 20:	Cc = 0.30;	K0c = 1.25328846856353;		break;
			case 21:	Cc = 0.20;	K0c = 1.66442289935074;		break;
			case 22:	Cc = 0.10;	K0c = 2.73224059434896;		break;*/
			/* from 3Dvlt_K0cFind.c v9 Ouput22 n=9 (not 6) THETA=0.6918  (B reduced by factor 100, to see if pressures > 0 now) //
			case 1:		Cc = 1.20;	K0c = 0.271461769357591;	break;
			case 2:		Cc = 1.10;	K0c = 0.282143079700346;	break;
			case 3:		Cc = 1.06;	K0c = 0.286778777384704;	break;
			case 4:		Cc = 1.05;	K0c = 0.287973572124537;	break;
			case 5:		Cc = 1.04;	K0c = 0.289183333572728;	break;
			case 6:		Cc = 1.03;	K0c = 0.290408387810084;	break;
			case 7:		Cc = 1.02;	K0c = 0.291649071136445;	break;
			case 8:		Cc = 1.01;	K0c = 0.292905730490616;	break;
			case 9:		Cc = 1.00;	K0c = 0.294178723891727;	break;
			case 10:	Cc = 0.99;	K0c = 0.295468420903338;	break;
			case 11:	Cc = 0.98;	K0c = 0.296775203121707;	break;
			case 12:	Cc = 0.97;	K0c = 0.298099464689713;	break;
			case 13:	Cc = 0.90;	K0c = 0.307894724329719;	break;
			case 14:	Cc = 0.80;	K0c = 0.323741801852047;	break;
			case 15:	Cc = 0.70;	K0c = 0.342365408396481;	break;
			case 16:	Cc = 0.60;	K0c = 0.364731450538067;	break;
			case 17:	Cc = 0.55;	K0c = 0.377762862655874;	break;
			case 18:	Cc = 0.50;	K0c = 0.392369691635797;	break;
			case 19:	Cc = 0.40;	K0c = 0.427894232841816;	break;
			case 20:	Cc = 0.30;	K0c = 0.476281116126589;	break;
			case 21:	Cc = 0.20;	K0c = 0.548728947360506;	break;
			case 22:	Cc = 0.10;	K0c = 0.679470722062787;	break;*/
			/* from 3Dvlt_K0cFind.c v9 Ouput23 n=9 (not 6) THETA=0.6918  (B reduced by factor 100000, to see if pressures > 0 now) //
			case 1:		Cc = 1.20;	K0c = 0.105695317440848;	break;
			case 2:		Cc = 1.10;	K0c = 0.107180194731249;	break;
			case 3:		Cc = 1.06;	K0c = 0.107792545290518;	break;
			case 4:		Cc = 1.05;	K0c = 0.107947341429588;	break;
			case 5:		Cc = 1.04;	K0c = 0.108102831972715;	break;
			case 6:		Cc = 1.03;	K0c = 0.108259022536513;	break;
			case 7:		Cc = 1.02;	K0c = 0.10841591880465;		break;
			case 8:		Cc = 1.01;	K0c = 0.108573526528914;	break;
			case 9:		Cc = 1.00;	K0c = 0.108731851530304;	break;
			case 10:	Cc = 0.99;	K0c = 0.10889089970014;		break;
			case 11:	Cc = 0.98;	K0c = 0.109050677001197;	break;
			case 12:	Cc = 0.97;	K0c = 0.109211189468862;	break;
			case 13:	Cc = 0.90;	K0c = 0.110355884185295;	break;
			case 14:	Cc = 0.80;	K0c = 0.112058607406945;	break;
			case 15:	Cc = 0.70;	K0c = 0.113847182341115;	break;
			case 16:	Cc = 0.60;	K0c = 0.115729774586218;	break;
			case 17:	Cc = 0.55;	K0c = 0.116709201061877;	break;
			case 18:	Cc = 0.50;	K0c = 0.11771575100733;		break;
			case 19:	Cc = 0.40;	K0c = 0.119815927422949;	break;
			case 20:	Cc = 0.30;	K0c = 0.122042883888828;	break;
			case 21:	Cc = 0.20;	K0c = 0.1244113711266;		break;
			case 22:	Cc = 0.10;	K0c = 0.126938841865008;	break;*/
			/* from 3Dvlt_K0cFind.c v9 Ouput24 n=9 (not 6) THETA=0.6918  (B increased by factor 4, to see if pressures > 0 now) //
			case 1:		Cc = 1.20;	K0c = 0.585841645022765;	break;
			case 2:		Cc = 1.10;	K0c = 0.626960522785025;	break;
			case 3:		Cc = 1.06;	K0c = 0.645481120304797;	break;
			case 4:		Cc = 1.05;	K0c = 0.650322630851423;	break;
			case 5:		Cc = 1.04;	K0c = 0.655253538627639;	break;
			case 6:		Cc = 1.03;	K0c = 0.660276435899988;	break;
			case 7:		Cc = 1.02;	K0c = 0.665394017244446;	break;
			case 8:		Cc = 1.01;	K0c = 0.670609084669921;	break;
			case 9:		Cc = 1.00;	K0c = 0.675924553053741;	break;
			case 10:	Cc = 0.99;	K0c = 0.68134345591154;		break;
			case 11:	Cc = 0.98;	K0c = 0.686868951525904;	break;
			case 12:	Cc = 0.97;	K0c = 0.692504329460064;	break;
			case 13:	Cc = 0.90;	K0c = 0.735335989748018;	break;
			case 14:	Cc = 0.80;	K0c = 0.809111115066254;	break;
			case 15:	Cc = 0.70;	K0c = 0.903437350965549;	break;
			case 16:	Cc = 0.60;	K0c = 1.02827475888209;		break;
			case 17:	Cc = 0.55;	K0c = 1.10344534702955;		break;
			case 18:	Cc = 0.50;	K0c = 1.19000498172122;		break;
			case 19:	Cc = 0.40;	K0c = 1.41799235830292;		break;
			case 20:	Cc = 0.30;	K0c = 1.78089507844825;		break;
			case 21:	Cc = 0.20;	K0c = 2.4723407087252;		break;
			case 22:	Cc = 0.10;	K0c = 4.41264180674246;		break;*/
			/* from 3Dvlt_K0cFind.c v9 Ouput25 n=9 (not 6) THETA=0.6918  (B increased by factor 100, to see if pressures > 0 now) //
			case 1:		Cc = 1.20;	K0c = 0.810923309985909;	break;
			case 2:		Cc = 1.10;	K0c = 0.875133630199004;	break;
			case 3:		Cc = 1.06;	K0c = 0.904189872661325;	break;
			case 4:		Cc = 1.05;	K0c = 0.911798502253207;	break;
			case 5:		Cc = 1.04;	K0c = 0.919553004772204;	break;
			case 6:		Cc = 1.03;	K0c = 0.927457680737061;	break;
			case 7:		Cc = 1.02;	K0c = 0.935517002129023;	break;
			case 8:		Cc = 1.01;	K0c = 0.943735621045468;	break;
			case 9:		Cc = 1.00;	K0c = 0.952118378884037;	break;
			case 10:	Cc = 0.99;	K0c = 0.960670316095661;	break;
			case 11:	Cc = 0.98;	K0c = 0.969396682548105;	break;
			case 12:	Cc = 0.97;	K0c = 0.978302948545143;	break;
			case 13:	Cc = 0.90;	K0c = 1.04544732014497;		break;
			case 14:	Cc = 0.80;	K0c = 1.15703608782159;		break;
			case 15:	Cc = 0.70;	K0c = 1.29630951515192;		break;
			case 16:	Cc = 0.60;	K0c = 1.47831725958328;		break;
			case 17:	Cc = 0.55;	K0c = 1.59271120067536;		break;
			case 18:	Cc = 0.50;	K0c = 1.72887806338185;		break;
			case 19:	Cc = 0.40;	K0c = 2.09859018404964;		break;
			case 20:	Cc = 0.30;	K0c = 2.70376980409635;		break;
			case 21:	Cc = 0.20;	K0c = 3.88776446782631;		break;
			case 22:	Cc = 0.10;	K0c = 5.29029259299343;		break;*/
		}

		switch(Op){  //  TempLabelOp -> 0 or 1 for labeling the file with "T" or "Tv", respectively
			case 1:  TempLabelOp=0;  break;
			case 2:  TempLabelOp=1;  break;
			case 3:  TempLabelOp=0;  break;
			case 4:  TempLabelOp=0;  break;
			case 5:  TempLabelOp=1;  break;
			case 6:  TempLabelOp=1;  break;
			case 7:  TempLabelOp=0;  break;
		} // TempLabelOp, and the file label (T or Tv) is meant to indicate which quantity is best used for plotting the data T/Tc = T/Tkt or Tv = tempv = 1-T/Tc = 1-T/Tkt

		// Prepare output file, print identification and values //
		//if(TempLabelOp==0)  asprintf(&filename, "3Dvlt_macro_noifthen_T_Cc%3.2f_lmax%g_dl%g_Op%i.dat",  Cc,lmax,dl,Op);

//		if(TempLabelOp==0)  asprintf(&filename, "3Dvlt_macro_noifthen_T_Cc%3.2f_lmax%g_dl%g_Op%i_usingK0cFind1.dat",  Cc,lmax,dl,Op);
//		if(TempLabelOp==0)  asprintf(&filename, "3Dvlt_macro_noifthen_T_Cc%3.2f_lmax%g_dl%g_Op%i_usingK0cFind3dl.dat",  Cc,lmax,dl,Op);
		if(TempLabelOp==0)  asprintf(&filename, "3Dvlt_macro_noifthen_T_Cc%3.2f_lmax%g_dl%g_Op%i_usingK0cFind3ds.dat",  Cc,lmax,dl,Op);

		if(TempLabelOp==1)  asprintf(&filename, "3Dvlt_macro_noifthen_Tv_Cc%3.2f_lmax%g_dl%g_Op%i.dat", Cc,lmax,dl,Op);

		outfile = fopen(filename,"w");  //  E.g., "3Dvlt_constT.out"
		printf(       "\n# Filename: %s\n", filename);
		fprintf(outfile,"# Filename: %s\n", filename);
		fprintf(outfile,"# Source: 3Dvlt_macro_noifthen.c\n");
		fprintf(outfile,"# Source version: %s\n", "1 (2011 Oct 27 - ...)");
		fprintf(outfile,"# Constant values: PI=%21.21g, PISQ=%21.21g, PICU=%21.21g, B=%21.21g, THETA=%g\n", PI,PISQ,PICU,B,THETA);
		fprintf(outfile,"# Parameter values: N=%i, Cc=%1.15g, K0c=%1.15g, lmax=%g, lsteps=%i, (dl=%g), lpts=%i, ldatamax=%i, a0=%g, a03=%g, a06=%g\n", N,Cc,K0c,lmax,lsteps,dl,lpts,ldatamax,a0,a03,a06);
		fprintf(outfile,"# Option values: Op=%i\n", Op);
		fprintf(outfile,"%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n", "T/Tc","1-T/Tc","l","K","y","e","K/K0","Kr/K0","G");
		printf(         "%s%g\t%s%g%s\n", " ---  Cc = ",Cc,"K0c = ",K0c,"  ---");
		printf(         "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n", "T/Tc","1-T/Tc","l","K","y","e","K/K0","Kr/K0","G");

		/* Perform calculations for various temperatures (calculations for each temp are independent) */
		i=0;
		notdone=true;
		while(notdone==true){
			switch(Op){
				case 1:	// A few hand-picked temperatures //
					switch(i){
						case 0:   Tfrac=1.500;  tempv=1.0-Tfrac;  i++;            break;
						case 1:   Tfrac=1.010;  tempv=1.0-Tfrac;  i++;            break;
						case 2:   Tfrac=1.005;  tempv=1.0-Tfrac;  i++;            break;
						case 3:   Tfrac=1.000;  tempv=1.0-Tfrac;  i++;            break;
						case 4:   Tfrac=0.900;  tempv=1.0-Tfrac;  i++;            break;
						case 5:   Tfrac=0.800;  tempv=1.0-Tfrac;  i++;            break;
						case 6:   Tfrac=0.700;  tempv=1.0-Tfrac;  i++;            break;
						case 7:   Tfrac=0.600;  tempv=1.0-Tfrac;  i++;            break;
						case 8:   Tfrac=0.500;  tempv=1.0-Tfrac;  i++;            break;
						case 9:   Tfrac=0.400;  tempv=1.0-Tfrac;  i++;            break;
						case 10:  Tfrac=0.300;  tempv=1.0-Tfrac;  i++;            break;
						case 11:  Tfrac=0.200;  tempv=1.0-Tfrac;  i++;            break;
						case 12:  Tfrac=0.100;  tempv=1.0-Tfrac;  i++;            break;
						case 13:  Tfrac=0.050;  tempv=1.0-Tfrac;  i++;            break;
						case 14:  Tfrac=0.020;  tempv=1.0-Tfrac;  i++;            break;
						case 15:  Tfrac=0.017;  tempv=1.0-Tfrac;  notdone=false;  break;
/*						case 0:   Tfrac=1.00;  tempv=1.0-Tfrac;  i++;            break;
						case 1:   Tfrac=0.90;  tempv=1.0-Tfrac;  i++;            break;
						case 2:   Tfrac=0.80;  tempv=1.0-Tfrac;  i++;            break;
						case 3:   Tfrac=0.70;  tempv=1.0-Tfrac;  i++;            break;
						case 4:   Tfrac=0.60;  tempv=1.0-Tfrac;  i++;            break;
						case 5:   Tfrac=0.50;  tempv=1.0-Tfrac;  i++;            break;
						case 6:   Tfrac=0.40;  tempv=1.0-Tfrac;  i++;            break;
						case 7:   Tfrac=0.30;  tempv=1.0-Tfrac;  i++;            break;
						case 8:   Tfrac=0.20;  tempv=1.0-Tfrac;  i++;            break;
						case 9:   Tfrac=0.10;  tempv=1.0-Tfrac;  notdone=false;  break; */
					}
					break;
				case 2:	// Decrement below Tc (staying very close to Tc) //
					// from T/Tc = 1-1e-8 to T/Tc = 0.992
					tempv = 0.0+pow(10,-8.0+0.1*i);  Tfrac = 1.0-tempv;
					if(i==59) notdone=false;
					i++;  break;
				case 3:	// Increment from near zero to above Tc //
					// from T/Tc = 0.206 to T/Tc = 0.9990;  then from T/Tc = 1.0012 to T/Tc = 2
					if(i<30){ tempv = 0.0+pow(10,-0.1-0.1*i);      Tfrac = 1.0-tempv; }
					else    { tempv = 0.0-pow(10,-5.0+0.1*(i-9));  Tfrac = 1.0-tempv; }
					if(i==59) notdone=false;
					i++;  break;
				case 4:	// Increment from near zero to just below Tc //
					// from T/Tc = 0.206 to T/Tc = 0.9991
					tempv = 0.0+pow(10,-0.1-0.05*i);  Tfrac = 1.0-tempv;
					if(i==59) notdone=false;
					i++;  break;
				case 5:	// Decrement below Tc (staying extremely close to Tc) //
					// T/Tc = 1-1e-20  to  T/Tc ~ 1-1e-16
					tempv = 0.0+pow(10,-20.0+0.1*i);  Tfrac = 1.0-tempv;
					// earlier: T/Tc = 1-1e-12  to  T/Tc ~ 1-1e-6
					if(i==59) notdone=false;
					i++;  break;
				case 6:	// Decrement below Tc (staying very close to Tc) //
					// from T/Tc = 1-1e-10 to T/Tc = 0.99992
					tempv = 0.0+pow(10,-10.0+0.1*i);  Tfrac = 1.0-tempv;
					if(i==59) notdone=false;
					i++;  break;
				case 7:	// Increment from 0 to 1.1*Tc //
					// from T/Tc = 0 to T/Tc = 2
					Tfrac = 0.001*i;  tempv = 1.0-Tfrac;
					if(i==2000) notdone=false;
					i++;  break;
			}

			// Initialize quantities at smallest length-scale (l=0) //
			x = l[0] = 0.0;
			z[0]  = K[0] = K0 = K0c/(1.0-tempv);
			z[1]  = y[0] = y0 = exp(-PISQ*K0*Cc);
			z[2]  = e[0] = 0.0;
			Kr[0] = K[0]*exp(-l[0]);
			G[0]  = y[0]*exp(-6.0*l[0])/a06;
			// Part of Bug Check below //
			//printf(         "%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\n", Tfrac, tempv, l[0], K[0], K[0]/K0, Kr[0]/K0, G[0], e[0]);

			// Calculate state-variables at progressively larger length scales, up to coherence length, via Runge-Kutta method (rk4) //
			j = 0;
			while(l[j]<lmax && K[j]<Kthresh){
				// Step out in length scale l, calculating next l, K, y, and e (and G and Kr) //
				rk4(EqRecRel, &x, z, dl, N);  // equil: rk4 3D (K,y,e), EqRecRel
				j++;
				l[j]  = l[j-1] + dl;
				K[j]  = z[0];
				y[j]  = z[1];
				e[j]  = z[2];
				Kr[j] = K[j]*exp(-l[j]);
				G[j]  = y[j]*exp(-6.0*l[j])/a06;
				// Bug Check: Print at most [ldatamax] (e.g., 50) data points to screen and output file //
				//if(j%(lsteps/ldatamax)==0){
				//	printf(         "%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\n", Tfrac, tempv, l[j], K[j], y[j], e[j], K[j]/K0, Kr[j]/K0, G[j]);
				//	fprintf(outfile,"%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\n", Tfrac, tempv, l[j], K[j], y[j], e[j], K[j]/K0, Kr[j]/K0, G[j]);
				//}
			}

			// Record data values //
			printf(         "%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\n", Tfrac, tempv, l[j], K[j], y[j], e[j], K[j]/K0, Kr[j]/K0, G[j]);
			fprintf(outfile,"%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\n", Tfrac, tempv, l[j], K[j], y[j], e[j], K[j]/K0, Kr[j]/K0, G[j]);
			fflush(outfile);
		}

		fclose(outfile);
	}
}



// Runge-Kutta 4th order method //
void rk4(void (*f)(double, double*, double*, unsigned), double *x, double y[], double h, unsigned n){
	int i,j;
	double *k[4],*s,temp;

	for(i=0;i<4;i++)  k[i] = (double *)calloc(n,sizeof(double));
	s = (double *)calloc(n,sizeof(double));
	f(*x,y,k[0],n);
	for(i=1;i<4;i++){
		temp = h*((i+1)/2)/2;
		// using integer division trick (times double): ((i+1)/2)/2 = 0.50, 0.50, 1.00 instead of 0.75, 1.00, 1.25
		for(j=0;j<n;j++)  s[j] = y[j]+k[i-1][j]*temp;
		f(*x+h*(i/2)/2,s,k[i],n);
		// using integer division trick (times double): (i/2)/2 = 0.00, 0.50, 0.50 instead of 0.50, 0.75, 1.00
	}
	for(j=0;j<n;j++)  y[j] += h*(k[0][j]+2.0*(k[1][j]+k[2][j])+k[3][j])/6.0;
	*x += h;
	for(i=0;i<4;i++)  free((char *) k[i]);
	free((char *)s);
}



// Equilibrium (K,y,e) recursion relations //
void EqRecRel(double x, double z[], double dzdx[], unsigned n){
	dzdx[0] = z[0]-B*z[0]*z[0]*z[1];
	//if( log(z[0]) > 0.0 ) // if ac' > a, set ac' = a (replace log(K[i]) with zero)
	//	dzdx[1] = z[1]*( 6.0 - PISQ*z[0] );
	//else
		dzdx[1] = z[1]*( 6.0 - PISQ*z[0]*(1.0-THETA*log(z[0])) );
	dzdx[2] = -PI*exp(-3.0*x)*z[1];
}



//  Program Notes  //
//=========================================================================//
/*

...

*/
