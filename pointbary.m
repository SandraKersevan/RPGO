function b = pointbary(P, T)
% Opis:
%  pointbary karteziène koordinate (x, y) toèke P pretvori v
%  baricentriène koordinate (u, v, w) glede na trikotnik T
%
% Definicija:
%  b = pointbary(P, T)
%
% Vhodni podatek:
%  P    toèka dimenzije 2
%  T    trikotnik v obliki matrike dimenzije 3x2, na podlagi 
%       katerega raèunamo baricentriène koordinate
%
% Izhodni podatek:
%  b    baricentriène koordinate toèke P

A = [ones(1,3); T(:,1)'; T(:,2)'];
x = [1; P'];

b = (A\x)';
end

