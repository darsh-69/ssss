%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}

%%
[a-zA-Z0-9]+[a-zA-Z0-9]* {id++; printf("\n Identifier:"); ECHO;}
[-|+|*|/|=]+[-|+|*|/|=]* {op++; printf("\n Operators"); ECHO;}
"(" {v++;}
")" {v--;}
%%

int main()
{
	printf("ENTER  THE EXPRESSION:\n");
	yylex();
	if((op+1)==id && v==0 && flag==0)
	{
		printf("Identifiers are :%d\nOperators are :%d\n",id,op);
		printf("Expression is valid");
	}
	else
			printf("\n Expression Is Invalid \n");
}
int yywrap()
{
	return 1;
}
