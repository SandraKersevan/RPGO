function b = decasteljau3(B,P)
n = size(B,1)-1;
U = ones(n,1)*P;
b = blossom3(B,U);
end

