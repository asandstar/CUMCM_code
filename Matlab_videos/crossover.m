function children=crossover(parents)
[popSize,numberofcities]=size(parents);
children=parents;%初始化子代
for i=1:2:popSize%交叉开始
    parent1=parents(i+0,:);child1=parent1;
    parent2=parents(i+1,:);child2=parent2;
    InsertPoints=ceil(numberofcities*rand(1,2));%交叉法
    for j=min(InsertPoints):max(InsertPoints)
        if parent1(j)~=parents2(j)%如果对应位置不重复
            child1(child1==parent2(j))=child1(j);
            child1(j)=child2(j);
            child2(child2==parent1(j))=child2(j);
            child2(j)=child1(j);
        end
    end
    children(i+0,:)=child1;children(i+1,:)=child2;
end%交叉结束