%图形的修饰语标注：坐标系、线条颜色、线型、字体、属性
%1.plot
%草掉坐标系中已有图形对象
%设置了hold on后，可以保持坐标系中已绘出图形
%进一步设置线宽度(LineWidth),标记点边缘颜色(MarkerEdgeColor),填充颜色(MarkerFaceColor)
t=0:pi/20:pi;
y=sin(4*t).*sin(t)/2;
plot(t,y,'-bs','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','y','MarkerSize',10)
%设置线宽为2，标记点边缘颜色为黑色，填充颜色为黄色，尺寸10
%2.matlab内置特定函数
%title('My own plot')
%xlabel('This is my X axis')
%ylabel('My Y axis')
%text(1,2,'正弦曲线')
%gtext('字符串')
%grid on
t=0:pi/100:2*pi;
y=sin(t);
plot(t,y),grid,
axis([0 2*pi -1 1])
xlabel('0 leq itt rm leq pi','FontSize',16)
ylabel('sin(t)','FontSize',20)
title('正弦函数图形','FontSize','宋体','FontSize',20)
text(pi,sin(pi),'leftarrowsin(t)=0','FontSize',16)
text(3*pi/4,sin(3*pi/4),'leftarrowsin(t)=0.707','FontSize',16)
text(5*pi/4,sin(5*pi/4),'sin(t)=-0.707rightarrow','FontSize',16)
gtext('学习')
%3.legend函数(添加图例框)
%调用格式：
%A.legend('字符串1','字符串2',……)
%B.legend('字符串1','字符串2','location')
x=0:pi/10:2*pi;
y1=sin(x);
y2=0.6*sin(x);
y3=0.3*sin(x);
plot(x,y1,x,y2,'-o',x,y3,'-*')
legend('sin(x)','0.6*sin(x)','0.3*sin(x)','location','northeast')
%4.set函数
%set(句柄，属性名1，属性值1，属性名2，属性值2，……）
h=plot(x,y1,x,y2,'-o',x,y3,'-*')
set(h,'Color',[1,0,0])%将句柄所指曲线颜色设置为红色
%没有设置句柄，可以用以下函数
%gcf:获得当前图形窗口的句柄
%gca:获得当前坐标轴对象的句柄
%gco:获得当前对象的句柄
%A.对图形窗口的底色修改
set(gcf,'Color',[1,1,1])%白色
%B.把当前X轴颜色改成绿色
set(gca,'Xcolor',[0,1,0])
%C.定义坐标轴的显示刻度
t=-pi:pi/20:pi;
y=sin(t);
plot(t,y)
set(gca,'xtick',-4:2:4)%等间隔
set(gca,'XTickLabel',{'1','5','13','30','48','77','100','142'});%不等间隔

%在一张图中显示y1,y2两个函数关于x的变化趋势，处理数据
%x:1 5 13 30 48 77 100 142
%y1:1.3 2.1 3.6 4.7 7.8 8.0 8.3 8.1
%y2:0.9 1.8 5.6 6.4 8.5 9.8 9.3 9.9
x=[1,5,13,30,48,77,100,142];
ind=1:length(x);
y1=[1.3,2.1,3.6,4.7,7.8,8.0,8.3,8.1];
y2=[0.9 1.8 5.6 6.4 8.5 9.8 9.3 9.9];
plot(ind,y1,'s-',ind,y2,'s-');
set(gca,'XTickLabel',{'1','5','13','30','48','77','100','142'});
