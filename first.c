#include<stdio.h>
#include<ctype.h>
int n;
char pset[20][20];

void addToResult(char res[], char c){
	int i;
	for(i=0;res[i]!='\0';i++){
		if(res[i]==c)
			return ;
	}
	res[i]=c;
	res[i+1]='\0';
}

void First(char res[],char c){
	int i,j,k;
	int fe;
	char sub[20];
	sub[0]='\0';
	res[0]='\0';
	if(!(isupper(c))){
		addToResult(res,c);
		return ;
	}
	for(i=0;i<n;i++){
		if(pset[i][0]==c){
			if(pset[i][2]=='$'){
				addToResult(res,'$');
				return ;
			}
			else{
				j=2;
				while(pset[i][j]!='\0'){
					fe=0;
					First(sub,pset[i][j]);
					for(k=0;sub[k]!='\0';k++){
						addToResult(res,sub[k]);
					}
					for(k=0;sub[k]!='\0';k++){
						if(sub[k]=='$'){
							fe=1;
							break;
						}
					}
					if(!(fe))
						break;
					j++;
				}
			}
		}
	}
	return ;
}

void main(){
	int i;
	char ch,c;
	char res[20];
	printf("enter no of production\n");
	scanf("%d",&n);
	printf("enter production\n");
	for(i=0;i<n;i++)
		scanf("%s",pset[i]);
	do{
		printf("enter character to which first need to know\n");
		scanf(" %c",&c);
		First(res,c);
		printf("first(%c) = { ",c);
		for(i=0;res[i]!='\0';i++)
			printf(" %c ",res[i]);
		printf(" }\n");
		printf("enter 'y' to contnue and 'n' to terminate\n");
		scanf(" %c",&ch);
	}while(ch=='Y' || ch=='y');
}
	
