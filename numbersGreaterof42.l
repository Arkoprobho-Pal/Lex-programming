%{
#include<stdio.h>
int count=0;

%}

%%
[4][3-9]|[5-9][0-9]|[1-9][0-9][0-9]+ {count++;}
[4][2][.][0]*[1-9]*|[5-9][0-9][.][0-9]+|[1-9][0-9][0-9]+[.][0-9]+ {count++;}
%%

int main()
{
	yyin=fopen("numberG.txt","r");
	yylex();
	printf("No. of +veNumbers greater than 42: %d\n",count);

return 0;
}

