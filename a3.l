%{
	#include<stdio.h>
	int length;
	void func(int);
	
%}
%% 
[a-zA-Z0-9]+ {length=yyleng;func(length);}
%%
void func(int l){
	if(yytext[0]=='A' || yytext[0]=='a')
	{
		if(l==3){
			printf("yes");
		}
		else
			printf("no");
	}
	else{
		printf("no");
	}
}
int yywrap(){}
int main()
{
	printf("enter ");
	yylex();
	return 0;
}
