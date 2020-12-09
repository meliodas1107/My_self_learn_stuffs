#include<iostream>

using namespace std;

//int calculateRope(int,int,int,int);
int calculateRope(int l,int a, int b ,int c,int pieces=0)
{
	if(l==0)
		return pieces;
	if(l<0)
		return -1;
	
	int p1=0,p2=0,p3=0,greater=-1;
	p1=calculateRope(l-a,a,b,c,pieces+1);
	p2=calculateRope(l-b,a,b,c,pieces+1);
	p3=calculateRope(l-c,a,b,c,pieces+1);
	if(p1>p2 && p1>p3)
	{
		return p1;
	}
	else if(p2>p1 && p2>p3)
	{
		return p2;
	}
	else
		return p3;
}

int main()
{
	int l,a,b,c;
	cout<<"Length: ";
	cin>>l;
	cout<<"Enter a b c: ";
	cin>>a>>b>>c;
	cout<<calculateRope(l,a,b,c);
}


