%{
#include<stdio.h>
int scount=0;
int wcount=0;
int ccount=0;
int lcount=0;
%}

%%
[\n] {lcount++,wcount++;}
[\t ]{scount++,wcount++;}
[a-zA-Z]{ccount++;}
%%
