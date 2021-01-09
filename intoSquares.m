function C = intoSquares(i,j,k,B,smer)
% dano matriko razdeli na kvadrate tako, da se ujema s triangulacijo

if ~exist('smer')
    smer = 0;
else
    smer = 1;
end
C = cell(j+k,i+k);
delitev = i+j+k-1-smer;

for vr=1:j+k
    for st=1:i+k
        C{vr,st} = B((vr-1)*(delitev-1)+1:(vr-1)*(delitev-1)+delitev,(st-1)*(delitev-1)+1:(st-1)*(delitev-1)+delitev);
    end
end

end

