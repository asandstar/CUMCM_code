function p=NPointsInHalfCircle(num)
N=num;
total=100000;
count=0;
for e=1:total
    %生成N个随机点
    p=NPoints(N);
    %依次让每个点作为第一点计算斜率
    for i=1:N
        k=p(i,2)/p(i,1);
        b=[];%保存截距的矩阵
        %计算截距
        for j=1:N
            if j==i
                continue;
            else
                b=[b,p(j,2)-k*p(j,1)];
            end
        end
        %判断N-1个截距的符号一致性
        if SymbolIsEqual(b)
            count=count+1;
            break;
        end
    end
end
p=count/total;

end