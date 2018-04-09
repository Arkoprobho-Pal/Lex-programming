%{
#include<stdio.h>
int scm=0,cmt=0;
%}

%%
"/*"[^*/]*"*/" {cmt++;}
"/*"([a-z]|[0-9]|[A-Z]|" "\""\n")+"*/" {}
"//"[^\n]* {scm++;}
%%

int main()
{
	yyin=fopen("l2.c","r");
	yyout=fopen("lr.c","w");
	yylex();

return 0;
}
