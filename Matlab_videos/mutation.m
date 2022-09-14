function children=mutation(parents,probmutation)
[popSize,numberofcities]=size(parents);
children=parents;%初始化子代
for k=1:popSize%变异开始
    if rand<probmutation%以一定概率变异
        InsertPoints=ceil(numberofcities*rand(1,2));
        I=min(InsertPoints);J=max(InsertPoints);
        switch ceil(rand*4)%swap,slide,flip
            case 1
                children(k,[I J])=parents(k,[J I]);
            case 2
                children(k,I:J)=parents(k,[I+1:J I]);
            otherwise
                children(k,I:J)=parents(k,J:-1:I);
        end
    end
end%变异结束