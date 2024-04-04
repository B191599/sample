%{
	#include<stdio.h>
	int num;
%}
%%
[0-9]+ {num=atoi(yytext);
	if(num%2==0){printf("even");}
	else{printf("odd");}
	}
.* {printf("nan");}
%%
int yywrap(){}
int main()
{	
	printf("enter ");
	yylex();
     	return 0;
  }
	
