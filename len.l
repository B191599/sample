%{
	#include<stdio.h>
	int length;
%}
%%
.* {length=yyleng ; printf("%d",length);}
\n {return 0;}
%%
int yywrap(){}
int main(){
	printf("enter ");
	yylex();
	printf("\n%d",length);
	return 0;
}
