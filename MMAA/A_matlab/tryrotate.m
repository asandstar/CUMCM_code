x=0:10:600;
[x,y,z]=cylinder(30*exp(-x/400).*sin((x+25*pi)/100)+130);
surf(x,y,z)