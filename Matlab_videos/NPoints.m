function p=NPoints(N)
p=[];
    for i=1:N
        p=[p;2*[rand,rand]-1];%[N,2]
    end
end