clc,clear
randn('seed',sum(100*clock));
a=randn(6,1);
b=[today:today+5]'
fts=fints(b,a)
fts(3)=NaN;
newdata=fillts(fts,'linear')
data=fts2mat(newdata)