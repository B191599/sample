#include<stdio.h>
#include<ctype.h>
#include<string.h>

int m,n;
char pset[20][20];
char res[20];
void Follow(char);

void addToResult(char c){
	int i;
	for(i=0;i<=m;i++){
		if(res[i]==c){
			return;
		}
	}
	res[m++]=c;
}

void First(char c){
	int i;
	if(!(isupper(c))){
		addToResult(c);
	}
	for(i=0;i<n;i++){
		if(pset[i][0]==c){
			if(pset[i][2]=='$')
				Follow(pset[i][0]);
			else if(islower(pset[i][2]))
				addToResult(pset[i][2]);
			else
				First(pset[i][2]);
		}
	}
}
				
void Follow(char c){
	int i,j,k;
	if(pset[0][0]==c){
		addToResult('$');
	}
	for(i=0;i<n;i++){
		for(j=2;j<strlen(pset[i]);j++){
			if(pset[i][j]==c){
				if(pset[i][j+1]!='\0')
					First(pset[i][j+1]);
				else if(pset[i][j+1]=='\0'){
					if(pset[i][j]==pset[i][0]){
						break;
					}
					Follow(pset[i][0]);
				}
			}
		}
	}
}

void main(){
	int i;
	char c,ch;
	printf("enter number of productions\n");
	scanf("%d",&n);
	printf("enter productions\n");
	for(i=0;i<n;i++)
		scanf("%s",pset[i]);
	do{
		m=0;
		printf("enter char to find follow\n");
		scanf(" %c",&c);
		Follow(c);
		printf("follow(%c) =  { ",c);
		for(i=0;i<m;i++)
			printf(" %c ",res[i]);
		printf(" }\n");
		printf("enter 'y' to continue and 'n' to terminate\n");
		scanf(" %c",&ch);
	}while(ch=='y' || ch=='Y');
}
		
		
		
		
		
