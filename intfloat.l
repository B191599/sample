%{
	#include<stdio.h>
	//int int_count=0;
	//int float_count=0; 
%}
%%
^[+-]?[0-9]+ {printf("int");}
^[+-]?[0-9]*[.][0-9]+ {printf("flaot");}
.* {printf("nan");}
%%
int yywrap(){}
int main(){
	printf("enter ");
	yylex();
	//if(int_count!=0)
	//	printf("int");
	//else if(float_count!=0)
	//	printf("float");
	//else
	//	printf("nan");
	return 0;
}
