function b = pointbary(P, T)
% Opis:
%  pointbary kartezične koordinate (x, y) točke P pretvori v
%  baricentrične koordinate (u, v, w) glede na trikotnik T
%
% Definicija:
%  b = pointbary(P, T)
%
% Vhodni podatek:
%  P    točka dimenzije 2
%  T    trikotnik v obliki matrike dimenzije 3x2, na podlagi 
%       katerega računamo baricentrične koordinate
%
% Izhodni podatek:
%  b    baricentrične koordinate točke P

A = [ones(1,3); T(:,1)'; T(:,2)'];
x = [1; P'];

b = (A\x)';
end

