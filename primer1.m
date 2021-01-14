% Courantova funkcija B_111

% P = [0 0
%     1 0
%     0 1
%     1 1
%     2 1
%     1 2
%     2 2 ];
% 
T = [1 2 4;
    1 3 4;
    3 4 6;
    4 6 7;
    4 5 7;
    2 4 5];
% 
% TR = triangulation(T,P)
% 
% triplot(TR)

trisurf(T,x,y,z, 'FaceAlpha', 0.2, 'FaceColor', 'b')
xlabel('os x') 
ylabel('os y') 