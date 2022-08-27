% t=0:pi/50:10*pi;
% plot3(sin(t),cos(t),t)
% xlabel('sin(t)'),ylabel('cos(t)'),zlabel('t')
x=-3:0.1:3;y=-5:0.1:5;
[x,y]=meshgrid(x,y);
z=(sin(x.*y)+eps)./(x.*y+eps);
mesh(x,y,z)