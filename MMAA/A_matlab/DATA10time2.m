%对当前工作路径下所有时间序列型纯文本文件进行相关数据操作
clc,clear
tf=dir('*.txt')
n=length(tf)
fts=ascii2fts(tf(i).name);
fts=extfield(fts,{'series2','series3'});
for i =2:n
    tp1=ascii2fts(tf(i).name);
    tp2=extfield(tp1,{'series2','series3'});
    str1=['series',num2str(2*i)];str2=['series',num2str(2*i+1)];
    tp3=fints(tp2.dates,fts2mat(tp2),{str1,str2});
    fts=merge(fts,tp3);
end
fts