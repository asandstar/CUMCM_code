function popselect=select(pop,fitness,nselect,method)
popSize=size(pop,1);
switch method
    case 'roulette'%轮盘赌
        p=fitness/sum(fitness);%选中概率[0.2 0.3 0.5]
        cump=cumsum(p);%概率累加[0.2 0.5 1.0]
        %利用插值：yi=线性插值(x,y,xi)
        I=interp1([0 cump],1:(popSize+1),...
            rand(1,nselected),'linear');
        I=floor(I);
    case 'competition'%两两竞争
        i1=ceil(popSize*rand(1,nselect));
        i2=ceil(popSize*rand(1,nselect));
        I=i1.*(fitness(i1)>=fitness(i2))+...
          i2.*(fitness(i1)<fitness(i2));
end
popselect=pop(I);