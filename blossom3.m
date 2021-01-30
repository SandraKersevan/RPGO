function b = blossom3(B,U)
% Opis:
%  blossom3 izracuna razcvet polinoma dveh spremenljivk
%
% Definicija:
%  b = blossom3(B,U)
%
% Vhodna podatka:
%  B    matrika velikosti n+1 x n+1, ki predstavlja
%       koeficiente polinoma dveh spremenljivk stopnje n v
%       Bezierjevi obliki (element matrike na mestu (i,j),
%       j <= n+2-i, doloca koeficient polinoma z indeksom
%       (n+2-i-j, j-1, i-1)),
%  U    matrika velikosti n x 3, v kateri vrstice
%       predstavljavo baricentricne koordinate tock ali
%       vektorjev glede na domenski trikotnik, za katere
%       izvajamo razcvet polinoma
%
% Izhodni podatek:
%  b    vrednost razcveta polinoma, dolocenega z matriko B,
%       v tockah, dolocenih z matriko U
n = size(U,1);
B_rminus1 = B;
for r=1:n
    B_r = nan(n-r+1,n-r+1);
    u = U(r,:);
    for i=1:n-r+1
        B_r(i,1:n-r+2-i) = u(1)*B_rminus1(i,1:n-r+2-i) + u(2)*B_rminus1(i,2:n-r+3-i) + u(3)*B_rminus1(i+1,1:n-r+2-i);
    end
    B_rminus1 = B_r;
end
b = B_r;