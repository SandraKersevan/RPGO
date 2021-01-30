function b = pointbary(P, T)
% Opis:
%  pointbary kartezi�ne koordinate (x, y) to�ke P pretvori v
%  baricentri�ne koordinate (u, v, w) glede na trikotnik T
%
% Definicija:
%  b = pointbary(P, T)
%
% Vhodni podatek:
%  P    to�ka dimenzije 2
%  T    trikotnik v obliki matrike dimenzije 3x2, na podlagi 
%       katerega ra�unamo baricentri�ne koordinate
%
% Izhodni podatek:
%  b    baricentri�ne koordinate to�ke P

A = [ones(1,3); T(:,1)'; T(:,2)'];
x = [1; P'];

b = (A\x)';
end

