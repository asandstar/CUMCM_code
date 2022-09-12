function isEqual=SymbolIsEqual(b)
    isEqual=1;
%先判断b的首元素的正负号
%第一个元素大于等于0，后面的元素都要大于等于0，有一个小于零说明符号不一致
    if b(1)>=0
        for i=2:length(b)
            if b(i)<0
                isEqual=0;
                break;
            end
        end
    else %b(1)<0
        for i=2:length(b)
            if b(i)>=0
                isEqual=0;
                break;
            end
        end
    end
end