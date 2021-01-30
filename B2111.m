% BOX SPLINE TYPE II - graph of B2111
% square 1
Bx = [-1/2 -1/3 -1/6 0; -1/3 -1/6 0 NaN; -1/6 0 NaN NaN; 0 NaN NaN NaN];
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN];
Bz = [0 0 0 4; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [-1 -5/6 -2/3 -1/2; -2/3 -1/2 -1/3 NaN; -1/3 -1/6 NaN NaN; 0 NaN NaN NaN];
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN];
Bz = [0 0 0 0; 0 0 0 NaN; 0 0 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 2
Bx = [1/2 2/3 5/6 1; 2/3 5/6 1 NaN; 5/6 1 NaN NaN; 1 NaN NaN NaN];
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN];
Bz = [3 6 12 16; 2 4 8 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN];
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN];
Bz = [4 4 4 3; 8 8 6 NaN; 16 12 NaN NaN; 16 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN];
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN];
Bz = [4 4 4 3; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN];
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN];
Bz = [0 0 0 3; 0 0 2 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 3
Bx = [1/2 2/3 5/6 1; 2/3 5/6 1 NaN; 5/6 1 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN];
Bz = [3 4 4 4; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN];
Bz = [16 12 6 3; 16 8 4 NaN; 8 4 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN];
Bz = [16 12 6 3; 8 4 2 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN];
Bz = [0 0 2 3; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 4
Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+2.*ones(4);
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN];
Bz = [4 0 0 0; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN];
Bz = [4 0 0 0; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 5
Bx = [-1/2 -1/3 -1/6 0; -1/3 -1/6 0 NaN; -1/6 0 NaN NaN; 0 NaN NaN NaN];
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [1 2 4 4; 2 4 8 NaN; 4 8 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [-1 -5/6 -2/3 -1/2; -2/3 -1/2 -1/3 NaN; -1/3 -1/6 NaN NaN; 0 NaN NaN NaN];
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
Bz = [0 0 0 1; 0 0 2 NaN; 0 4 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]-ones(4);
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [0 0 0 1; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]-ones(4);
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [0 0 0 1; 0 0 2 NaN; 0 4 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 6
Bx = [1/2 2/3 5/6 1; 2/3 5/6 1 NaN; 5/6 1 NaN NaN; 1 NaN NaN NaN];
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [17 20 20 16; 20 24 24 NaN; 20 24 NaN NaN; 16 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN];
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
Bz = [4 8 14 17; 8 16 20 NaN; 16 20 NaN NaN; 16 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN];
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [4 8 14 17; 8 12 14 NaN; 8 8 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN];
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [4 8 14 17; 8 16 20 NaN; 16 20 NaN NaN; 16 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 7
Bx = [1/2 2/3 5/6 1; 2/3 5/6 1 NaN; 5/6 1 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [17 14 8 4; 14 12 8 NaN; 8 8 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
Bz = [16 20 20 17; 16 16 14 NaN; 8 8 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [16 20 20 17; 24 24 20 NaN; 24 20 NaN NaN; 16 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [16 20 20 17; 16 16 14 NaN; 8 8 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 8
Bx = [1/2 2/3 5/6 1; 2/3 5/6 1 NaN; 5/6 1 NaN NaN; 1 NaN NaN NaN]+2.*ones(4);
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [1 0 0 0; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+2.*ones(4);
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
Bz = [4 4 2 1; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [4 4 2 1; 8 4 2 NaN; 8 4 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+2.*ones(4);
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
Bz = [4 4 2 1; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 9
Bx = [-1/2 -1/3 -1/6 0; -1/3 -1/6 0 NaN; -1/6 0 NaN NaN; 0 NaN NaN NaN];
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [0 0 0 0; 0 0 0 NaN; 0 0 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]-ones(4);
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [0 0 0 0; 0 0 0 NaN; 0 0 NaN NaN; 4 NaN NaN NaN];plotbezier3(Bx,By,1/48.*Bz,10)

% square 10
Bx = [1/2 2/3 5/6 1; 2/3 5/6 1 NaN; 5/6 1 NaN NaN; 1 NaN NaN NaN];
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [3 2 0 0; 6 4 0 NaN; 12 8 NaN NaN; 16 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN];
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN]+2.*ones(4);
Bz = [0 0 0 3; 0 0 2 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN];
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [0 0 0 3; 0 0 4 NaN; 0 4 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN];
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [4 4 4 3; 8 8 6 NaN; 16 12 NaN NaN; 16 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 11
Bx = [1/2 2/3 5/6 1; 2/3 5/6 1 NaN; 5/6 1 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [1/2 2/3 5/6 1; 1/3 1/2 2/3 NaN; 1/6 1/3 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [3 0 0 0; 4 0 0 NaN; 4 0 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [1 5/6 2/3 1/2; 1 5/6 2/3 NaN; 1 5/6 NaN NaN; 1 NaN NaN NaN]+2.*ones(4);
Bz = [0 0 2 3; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+ones(4);
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [0 0 2 3; 0 4 6 NaN; 8 12 NaN NaN; 16 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+ones(4);
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [16 12 6 3; 16 8 4 NaN; 8 4 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

% square 12
Bx = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
By = [1 5/6 2/3 1/2; 2/3 1/2 1/3 NaN; 1/3 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [0 0 0 0; 0 0 0 NaN; 0 0 NaN NaN; 4 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)

Bx = [0 1/6 1/3 1/2; 1/3 1/2 2/3 NaN; 2/3 5/6 NaN NaN; 1 NaN NaN NaN]+2.*ones(4);
By = [0 1/6 1/3 1/2; 0 1/6 1/3 NaN; 0 1/6 NaN NaN; 0 NaN NaN NaN]+2.*ones(4);
Bz = [4 0 0 0; 0 0 0 NaN; 0 0 NaN NaN; 0 NaN NaN NaN];
plotbezier3(Bx,By,1/48.*Bz,10)