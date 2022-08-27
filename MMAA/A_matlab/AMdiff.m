%求三阶导数
syms x
dy=diff(log((x+2)/(1-x)),3);
dy=simplify(dy)
pretty(dy)
%求一节向前差分
a=[0,0.5,2,4];
da=diff(a)