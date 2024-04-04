%{
  	#include<stdio.h>
  	int v=0;
  	int c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
\n {return 0;}
%%
int yywrap(){}
int main(){
	printf("enter ");
	yylex();
	printf("%d is vowels count and %d is consonants count",v,c);
}
