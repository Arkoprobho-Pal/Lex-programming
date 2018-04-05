%{
#include<stdio.h>
int abbccd=0;
int ab=0;
%}

%%
"abb"[a-zA-Z]*"ccd"[\n\t ] {abbccd++;ab++;}
"ab"+[a-zA-Z]*[\n\t ] {ab++;}

%%

int main()
{
	yyin=fopen("stringcheck.txt","r");
	yylex();
	printf("string starting with abb and ending with ccd : %d \n",abbccd);
	printf("string having ab once or more :%d \n",ab);
	
return 0;
}
