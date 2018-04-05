%{
#include<stdio.h>
int scount=0;
int wcount=0;
int ccount=0;
int lcount=0;
%}

%%
[\n] {lcount++;wcount++;}
[\t ] {scount++;wcount++;}
[a-zA-Z] {ccount++;}
%%

int main()
{
	yyin=fopen("test.txt","r");
	yylex();
	
	printf("No. of Words= %d \n",wcount);
	printf("No. of Characters= %d \n",ccount);
	printf("No. of Spaces= %d \n",scount);
	printf("No. of NewLines= %d \n",lcount);
	
return 0;
}
