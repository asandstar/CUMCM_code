%(1)
I=quadl(@(t)(t-3*t.^2+2*t.^3).^(-1/3),eps,0.5)
%(2)
I=dblquad(@(x,y)sqrt(1-x.^2-y.^2).*(x.^2+y.^2<=x),0,1,-0.5,0.5)
%(3)
fun3=@(x,y,z)z.^2*log(x.^2+y.^2+z.^2+1)./(x.^2+y.^2+z.^2+1).*(z>=0&...
z<=sqrt(1-x.^2-y.^2));
I=triplequad(fun3,-1,1,-1,1,0,1)
    