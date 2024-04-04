%{
	#include<stdio.h>
	int int_count=0,float_count=0;
%}
%%
^[-+]?[0-9]+ {ECHO; printf("integer"); int_count++;}
^[-+]?[0-9]*[.][0-9]+ {ECHO; printf("float"); float_count++;}
%%
int yywrap(){}
int main(){
	printf("enter ");
	yylex();
	printf("%d ic and %d fc\n",int_count,float_count);
	return 0;
}
