a=rand(5,10);
xlswrite('data5.xls',a,'Sheet2','B2')
b=xlsread('data5.xls','Sheet2','C3:F6')