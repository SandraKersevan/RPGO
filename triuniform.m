function tri = triuniform(N)
% tocke
X = 0:N-1;
[X,Y] = meshgrid(X);
V = [Y(:),X(:)];

% enakomerna triangulacija tipa I
TRI = zeros(2*(N-1)^2,3);
counter = 1;
for i=1:N-1
    for j=1:N-1
        TRI(counter,:) = [find(V(:,2)==Y(i,1) & V(:,1)==X(i,j)) find(V(:,2)==Y(i,1) & V(:,1)==X(i,j+1)) find(V(:,2)==Y(i+1,1) & V(:,1)==X(i+1,j+1))];
        TRI(counter+1,:) = [find(V(:,2)==Y(i+1,1) & V(:,1)==X(i+1,j+1)) find(V(:,2)==Y(i+1,1) & V(:,1)==X(i+1,j)) find(V(:,2)==Y(i,1) & V(:,1)==X(i,j))];
        counter = counter + 2;
    end
end
tri = triangulation(TRI,V);
end

