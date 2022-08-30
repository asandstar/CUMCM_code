%plot(X,Y,LineSpec)
%线形（四种）
% -实线;--虚线;:点线;-.点划线
%坐标点样式（常用）
%o圆 *星号 x十字 s正方形 d菱形 p五角星 h六角形
%颜色
%y黄 m品红 b蓝 k黑色
%1.plot(x,y)
% 以x元素为横坐标值，y元素为纵坐标值绘制曲线
x=0:pi/20:2*pi;
y=sin(x);
plot(x,y,'--or')
xlabel('x')
ylabel('sin(x)')
title('Plot of the Sine Function')

%2.plot(x,y1,x,y2,…)
% 以公共的x元素为横坐标值，以y1,y2,…元素为纵坐标值绘制多条曲线
x=0:pi/20:2*pi;
y1=sin(x);
y2=cos(x);
plot(x,y1,x,y2);

%同时绘制多个图像
x=0:pi/100:2*pi;
y=sin(x);
plot(x,y)
hold on
%结束hold off
y2=cos(x);
plot(x,y2,'r.')
hold on
y3=x;
plot(x,y3,'b:')
legend('sin','cos','x')
%为图片添加图例
grid on%给画中图填栅格
title('正弦余弦波形')%添加图像标题
text(1.5,0.3,'cos(x)')%将cosx的注解添加到坐标某个位置
gtext('sin(x)')%用鼠标光标定位，将注解放在鼠标点击的位置
%缺省条件下自动选择图形的横纵比例
%axis([xmin xmax ymin ymax])
%[]中分别给出x和y最大最小值
%axis equal 或axis('equal')
% x和y轴的单位长度相同
%axis square或axis('square')图框方形
%axis off或axis('off')清除坐标刻度
axis([0 6 -1 1])
hold off

%3.plot3绘制三维图像
z=0:pi/50:10*pi;
x=sin(z);
y=cos(z);
plot3(x,y,z)

%4.在同一个画面上建立几个坐标系,subplot(m,n,p)
%把一个画面分成m*n个图形区域，p代表当前区域号，在每个区域中分别画一个图
x=linspace(0,2*pi,30);y=sin(x);z=cos(x);
u=2*sin(x).*cos(x);v=sin(x)./cos(x);
subplot(2,2,1),plot(x,y),axis([0 2*pi -1 1]),title('sin(x)')
subplot(2,2,2),plot(x,z),axis([0 2*pi -1 1]),title('cos(x)')
subplot(2,2,3),plot(x,u),axis([0 2*pi -1 1]),title('2sin(x)cos(x)')
subplot(2,2,4),plot(x,v),axis([0 2*pi -20 20]),title('sin(x)/cos(x)')
