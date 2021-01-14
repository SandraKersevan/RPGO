% nosilci

[x,y] = meshgrid(-1:0.25:2,0:0.25:3);

tocke = [-1 0 0;
   -1.0000    0.5000 0;
   -1.0000    1.0000 0;
   -1.0000    1.5000 0;
   -1.0000    2.0000 0;
   -1.0000    2.5000 0;
   -1.0000    3.0000 0;
   -0.7500    0.2500 0;
   -0.7500    0.7500 0;
   -0.7500    1.2500 0;
   -0.7500    1.7500 0;
   -0.7500    2.2500 0;
   -0.7500    2.7500 0;
   -0.5000         0 0;
   -0.5000    0.5000 0;
   -0.5000    1.0000 0;
   -0.5000    1.5000 2;
   -0.5000    2.0000 0;
   -0.5000    2.5000 0;
   -0.5000    3.0000 0;
   -0.2500    0.2500 0;
   -0.2500    0.7500 0;
   -0.2500    1.2500 4;
   -0.2500    1.7500 4;
   -0.2500    2.2500 0;
   -0.2500    2.7500 0;
         0         0 0;
         0    0.5000 0;
         0    1.0000 4;
         0    1.5000 8;
         0    2.0000 4;
         0    2.5000 0;
         0    3.0000 0;
    0.2500    0.2500 0;
    0.2500    0.7500 4;
    0.2500    1.2500 8;
    0.2500    1.7500 8;
    0.2500    2.2500 4;
    0.2500    2.7500 0;
    0.5000         0 0;
    0.5000    0.5000 2;
    0.5000    1.0000 8;
    0.5000    1.5000 8;
    0.5000    2.0000 8;
    0.5000    2.5000 2;
    0.5000    3.0000 0;
    0.7500    0.2500 0;
    0.7500    0.7500 4;
    0.7500    1.2500 8;
    0.7500    1.7500 8;
    0.7500    2.2500 4;
    0.7500    2.7500 0;
    1.0000         0 0;
    1.0000    0.5000 0;
    1.0000    1.0000 4;
    1.0000    1.5000 8;
    1.0000    2.0000 4;
    1.0000    2.5000 0;
    1.0000    3.0000 0;
    1.2500    0.2500 0;
    1.2500    0.7500 0;
    1.2500    1.2500 4;
    1.2500    1.7500 4;
    1.2500    2.2500 0;
    1.2500    2.7500 0;
    1.5000         0 0;
    1.5000    0.5000 0;
    1.5000    1.0000 0;
    1.5000    1.5000 2;
    1.5000    2.0000 0;
    1.5000    2.5000 0;
    1.5000    3.0000 0;
    1.7500    0.2500 0;
    1.7500    0.7500 0;
    1.7500    1.2500 0;
    1.7500    1.7500 0;
    1.7500    2.2500 0;
    1.7500    2.7500 0;
    2.0000         0 0;
    2.0000    0.5000 0;
    2.0000    1.0000 0;
    2.0000    1.5000 0;
    2.0000    2.0000 0;
    2.0000    2.5000 0;
    2.0000    3.0000 0];

z = 1/16 .*[0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 2 0 0 0 0 0 0;
    0 0 0 0 0 4 0 4 0 0 0 0 0;
    0 0 0 0 4 0 8 0 4 0 0 0 0;
    0 0 0 4 0 8 0 8 0 4 0 0 0;
    0 0 2 0 8 0 8 0 8 0 2 0 0;
    0 0 0 4 0 8 0 8 0 4 0 0 0;
    0 0 0 0 4 0 8 0 4 0 0 0 0;
    0 0 0 0 0 4 0 4 0 0 0 0 0;
    0 0 0 0 0 0 2 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0]

T = [1 5 29;
    5 29 57;
    57 29 53;
    53 29 1;
    5 9 33;
    9 33 61;
    61 33 57;
    57 33 5;
    9 13 37;
    13 37 65;
    65 37 61;
    61 37 9;
    53 57 81;
    57 81 109;
    109 81 105;
    105 81 53;
    57 61 85;
    61 85 113;
    113 109 85;
    109 85 57;
    61 65 89;
    65 89 117;
    113 117 89;
    113 89 61;
    105 109 133;
    109 133 161;
    161 133 157;
    157 133 105;
    109 113 137;
    113 137 165;
    165 137 161;
    161 137 109;
    113 117 141;
    117 141 169;
    141 169 165;
    165 141 113];
% T = delaunay(x,y)
% triplot(T,x,y);

% TR = triangulation(T,P)
% 
% triplot(TR)
 trisurf(T,x, y, z, 'FaceAlpha', 0.2, 'FaceColor', 'b')
 xlabel('os x') 
 ylabel('os y') 