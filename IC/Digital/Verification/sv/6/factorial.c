//#include<svdpi.h>
#include</usr/cadence/IUS9.2/tools.lnx86/include/svdpi.h>

int factorial(int i){
    if(i<=1) return 1;
    else return i* factorial(i-1);
}
