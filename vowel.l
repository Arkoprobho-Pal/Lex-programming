%{
#include<stdio.h>
int vcount=0;
int ccount=0;
int oth=0;
%}

%%
[.,!''""? \n\t] oth++;
[aeiouAEIOU] vcount++;
[a-zA-Z] ccount++;

%%

int main()
{
	
	yyin=fopen("lextest.txt","r");
	yylex();
	printf("No. of vowels %d \n",vcount);
	printf("No. of consonants %d \n",ccount);
	
	printf("Total No. of spaces,newline,tabs,spcl chars: %d \n",oth);
return 0;
}
