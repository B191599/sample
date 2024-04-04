%{
	#include<stdio.h>
	int lc=0,wc=0,c=0,ch=0,tc=0,sc=0;
%}
%% 
& {return 0;}
\n {lc++;}
([ ]) {sc++;}
\t {tc++;}
. {ch++;c++ ;}
[a-zA-Z0-9]+ {wc++ ; c=c+yyleng;}
%%
int yywrap(){}
int main(){
	printf("enter ");
	yylex();
	printf("line count %d\n ",lc);
	printf("word count %d\n ",(wc+ch));
	printf("character count %d\n ",c);
	printf("tab count %d\n ",tc);
	printf("space count %d \n",sc);
	return 0;
}
