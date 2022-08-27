format rat
a=[1,1,0;1,0,1;1,1,1;1,2,-1];
b=[1;2;0;-1];
x1=a\b
x2=pinv(a)*b
format