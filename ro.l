%{
	#include<stdio.h>
%}
%%
">"|"<"|"<="|">="|"=="|"!=" {printf("yes, it is ro %s",yytext);}
.* {printf("no");}
%%
int yywrap(){}
int main(){
	printf("enter ");
	yylex();
	return 0;
}
