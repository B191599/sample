%{
	#include<stdio.h>
%}
%%
"hi" {printf("bye");}
.* {printf("wrong");}

%%
int yywrap(){}
int main()
{
	printf("enter ");
	yylex();
	return 0;
}
	
