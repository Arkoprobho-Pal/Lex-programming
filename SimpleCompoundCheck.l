%{
#include<stdio.h>
int count=0;

%}

%%
"or"|"OR"|"and"|"AND"|"BUT"|"but" {count=1;}
[^\n] {}
[\n] {}
%%

int main()
{
	yyin=fopen("statement.txt","r");
	yylex();
	if(count==1)
	{
		printf("Input is a Compound Statement\n");
	}
	else{
		printf("Input is a Simple Statement\n");
	
	}
return 0;
}

