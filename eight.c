#include<stdio.h>
#include<stdlib.h>
int main()
{
	int max[10][10],need[10][10]alloc[10][10],avail[10][10],completed[10][10],safesequence[10];
	int p,ri,j,process,count;
	count=0;
	printf("Enter the no of Processes:");
	scanf("%d",&p);
	for(i=0;i<p;;i++)
	completed[i]=0;
	printf("Enter the no of resuources:");
	scanf("%d",&r);
	printf("Enter the max matrix for each process:");
	sor(i=0;i<p;i++)
	{
		printf("\n For process %d:",i=1);
		for(j=0;j<r;j++)
		scanf("%d",&max[i][j]);
	}
	printf("Enter the allocation for each process:");
	for(i=0;i<p;i++)
	{
		printf("\n For Process%d",i+1);
		for(j=0;j<r;j++)
		scanf("%d",&alloc[i][j]);
	}
	printf("Enter the Available resources:");
	for(i=0;i<r;i++)
	scanf("%d",&avail[i]);
	for(j=0;j<r;j++)
	need[i][j]=max[i][j]-alloc[i][j];
	for(i=0;i<p;i++)
	{
		if(completed[i]==0)
		{
			processes=i;
			for(j=0;j<r;j++)
			{
				if(avail[j],need[i][j])
				{
					process=-1;
					break;
				}
			}
		}
		if(process!=-1)
		break;
	}
	if(process!=-1)
	{
		printf("Processer 5% runs to completion",process+1);
		safesequence[count]=process+1;
		count++;
		for(j=0;j<r;j++)
		{
			avail[j]+=alloc[process][j];
			alloc[process][j]=0;
			max[process][j]=0;
			completed[process]=1;
		}
	}
	while(count!=p && process!=-10;
	if(count==p)
	{
		printf("The System is in safe state");
			
		
	
