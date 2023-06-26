%{
 #include<stdio.h>
 #include<stdlib.h>
%}

%name parse
%token num
%left '+' '-'
%left '*' '/'

%%
input : exp{printf("%d \n",$$); exit(0);}
exp : exp'+'exp{$$ = $1+$3;}
		|exp'-'exp{$$ = $1-$3;}
		|exp'*'exp{$$ = $1*$3;}
		|exp'/'exp{if($3=0){printf("Divide by zero.Invalid expression \n");exit(0);}
		else $$ = $1/$3;}
		|'('exp')'{$$ =$2;}
		|num{$$ =$1;}; 
%%

int yyerror()
{
	printf("error ,invalid expression:\n");
	exit(0);
}
int main()
{
	printf("enter the expression:\n");
	yyparse();
}
