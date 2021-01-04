function C = intoSquares(i,j,k,B)

C = cell(j+k,i+k);
delitev = i+j+k-2;

for vr=1:j+k
    for st=1:i+k
        C{vr,st} = B((vr-1)*(delitev-1)+1:(vr-1)*(delitev-1)+delitev,(st-1)*(delitev-1)+1:(st-1)*(delitev-1)+delitev);
    end
end

end

