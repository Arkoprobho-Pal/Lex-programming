#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main()
{
	printf("\nInput:");
	int cstate=1;
	char str[100];
	scanf("%s",str);
	int length=strlen(str);
	int i;
	char ch;
	for(i=0;i<length;i++)
	{
		ch=str[i];
		if(cstate==1)
		{
			if(isdigit(ch))
			cstate=1;
			else if(ch=='.')
			cstate=2;
			else if(ch=='E'||ch=='e')
			cstate=3;
			else
			cstate=5;
		}
		else if(cstate==2)
		{
			if(isdigit(ch))
			cstate=2;
			else if(ch=='.')
			cstate=5;
			else if(ch=='E'||ch=='e')
			cstate=3;
			else
			cstate=5;
		}
		else if(cstate==3)
		{
			if(isdigit(ch))
			cstate=3;
			else if(ch=='.')
			cstate=4;
			else if(ch=='E'||ch=='e')
			cstate=5;
			else
			cstate=5;
		}
		else if(cstate==4)
		{
			if(isdigit(ch))
			cstate=4;
			else if(ch=='.')
			cstate=5;
			else if(ch=='E'||ch=='e')
			cstate=5;
			else
			cstate=5;
		}
		else
		{
			break;
		}
	}

	if(cstate==1)
		printf("\nThis is Integer Number.\n");
	else if(cstate==2||cstate==3||cstate==4)
		printf("\nThis is Real Number.\n\n");
	else if(cstate==5)
		printf("\nOpps!! This is not a number.\n");
}
