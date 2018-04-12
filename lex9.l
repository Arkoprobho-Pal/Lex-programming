%{
#include<stdio.h>
int cident=0;
int cint=0;
int cstring=0;
%}

%%
[a-zA-Z]+[0-9]*[ \n\t] {cident++;}
[-]?[0-9]+[ \n\t]+ {cint++;}
[0-9]+[a-zA-Z]+ {cstring++;}
%%
int main()
{
	
	yyin=fopen("lex9.txt","r");
	yylex();
	printf("No. of integers: %d \n",cint);
	printf("No. of identifiers %d \n",cident);
	printf("No. of string which are neither identifier nor integer %d \n",cstring);
	
return 0;
}
