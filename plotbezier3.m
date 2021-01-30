function plotbezier3(Bx,By,Bz,d)
[TRI,U] = trimeshgrid(d);
b = bezier3(Bx,By,Bz,U);
n = size(Bx,1);

hold on
trisurf(TRI,b(:,1),b(:,2),b(:,3));
%trimesh(TRI,b(:,1),b(:,2),b(:,3));

% kontrolni
% for i=1:n-1
%     for j=1:n-i
%         plot3([Bx(i,j),Bx(i,j+1),Bx(i+1,j),Bx(i,j)], [By(i,j),By(i,j+1),By(i+1,j),By(i,j)], [Bz(i,j),Bz(i,j+1),Bz(i+1,j),Bz(i,j)],'black')
%     end
% end
end

