%1.生成[min,max]之间的随机（整数）矩阵
%我的程序
min=input("请输入min:")
max=input("请输入max:")
m=input("请输入行数:")
n=input("请输入列数:")
x=input("小数矩阵输入1,整数矩阵输入2：")
if x==1
    rand([m,n])*(max-min)+min*ones(m,n)
elseif x==2
    randi(max/min,[m,n])*min
end
%老师的程序
val=input('请输入矩阵元素范围[min,max]:');
sz=input('请输入矩阵行列数[row,col]:');
isInt=input('请指定元素类型 0）小数 1）整数：');

if isInt==0%小数矩阵
    res=(val(2)-val(1))*rand(sz)+val(1);
else %整数矩阵
    res=randi(val,sz);
end
disp(res)
%1.1如何使每次输出的结果相同
%老师的答案
%每次生产前加上rand('seed',0)
%2.蒙特卡洛法模拟圆周率pi
%我的答案
y=input("请输入点数：");
q=0;
for a = rand([1,y])
    for b = rand([1,y])
        if a^2+b^2<1
        q=q+1;
        end
    end
end
pi=q/(y^2)*4
%老师的答案
allPoints=input('请输入生成的总点数：');
count=0;
for i=1:allPoints
    if rand^2+rand^2<=1
        count=count+1;
    end
end
res=count/allPoints*4;
disp(res);
%3.斐波那契数列的第n项和前n项和
%我的答案
N=input("输入试验次数：")
E=ones([1,N]);
if N==1
    F=E(1,1);
elseif N==2
    F=E(1,2);
end
for i=[3:N]
    E(1,i)=E(1,i-1)+E(1,i-2);
end
summary=sum(E)
%老师的答案
N=input('请指定数列的项数：');
res=[1,1];
for i=3:N
    element=res(length(res))+res(length(res)-1);
    res=[res,element];
end
disp(sum(res));
%4.求四只鸭子在同一个半圆里的概率
%我的答案(没做完)
M=input("输入试验次数：")
rand([1,4])
%老师的答案


