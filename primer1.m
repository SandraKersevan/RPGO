% Courantova funkcija B_111

[x,y] = meshgrid(0:2,0:2);

tocke = [x(:) y(:)];

T = [1 4 5;
    1 2 5;
    4 7 8;
    4 5 8;
    2 5 6;
    2 3 6;
    5 8 9;
    5 6 9];

% TR = triangulation(T,P)
% 
%  triplot(T,x,y);

z = [0 0 0;
    0 1 0;
    0 0 0]
    
trisurf(T,x,y,z, 'FaceAlpha', 0.2, 'FaceColor', 'b')
xlabel('os x') 
ylabel('os y') 
