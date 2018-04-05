%{
#include<stdio.h>
int positiveint=0;
int negativeint=0;
int positivefloat=0;
int negativefloat=0;
int oth=0;
%}

%%
[.,!''""? \n\t] oth++;
[-][0-9]+ negativeint++;
[+]?[0-9]+ positiveint++;
[+]?[0-9]*\.[0-9]+ positivefloat++;
[-][0-9]*\.[0-9]+ negativefloat++;

%%

int main()
{
	
	yyin=fopen("lextest1.txt","r");
	yylex();
	printf("No. of +ve integers: %d \n",positiveint);
	printf("No. of -ve integers %d \n",negativeint);
	printf("No. of +ve fractions: %d \n",positivefloat);
	printf("No. of -ve fractions: %d \n",negativefloat);
	
return 0;
}
