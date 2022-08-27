%(1)
syms m
f1=(2*m-1)/2^m;
s1=symsum(f1,m,1,inf)
%(2)
syms n
f2=1/n^2;
s2=symsum(f2,n,1,inf)
