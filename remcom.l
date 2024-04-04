%{
	#include<stdio.h>
	#include<stdlib.h>
	int sc=0,mc=0;
	
%}
%%
\/\/.* {sc++;}
\/\*.*\n*.*\*\/ {mc++;}
%%
int yywrap(){}
int main(){
	yyin = fopen("comment.c","r");
	yyout = fopen("out2.c","w");
	yylex();
	printf("sc=%d and mc=%d",sc,mc);
	return 0;
}	
