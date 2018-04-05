%{
#include<stdio.h>
%}

%%
"print" fprintf(yyout,"read");
"scanf" fprintf(yyout,"write");

%%

int main()
{
	yyin=fopen("lextest2.c","r");
	yyout=fopen("lexout2.c","a");
	yylex();

return 0;
}
