%{
#include<stdio.h>
int pcount=0;
int scount=0;
int oth=0;
%}

%%

"printf" pcount++;
"scanf" scount++;

%%

int main()
{
	
	yyin=fopen("lextest2.c","r");
	yylex();
	printf("No. of printf : %d \n",pcount);
	printf("No. of scanf : %d \n",scount);
	
	return 0;
}
