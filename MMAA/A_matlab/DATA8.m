clc,clear
fi=dir('*.xls')%提出excel文件的信息，返回值是数据结构
n=length(fi);%计算excel文件的个数
myData=cell(1,n);
for k =1:n
    myData{k}=importdata(fi(k).name);
end
celldisp(myData)%显示数组数据