%{
#include <stdio.h>
#include <stdlib.h>
%}

%name parser
%token A B


%%
input: s'\n'{printf("Successful Grammar \n");exit(0);}
		s: A s1 B| B
		s1: ;  | A s1
%%

main()
{
	printf("\n Enter A String \n");
	yyparse();
}
int yyerror()
{
	printf("\n Error \n");
	exit (0);
}
