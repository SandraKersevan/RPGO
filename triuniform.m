function tri = triuniform(N,M,type)
% Opis:
%  triuniform skonstruira mrezo triangulacije tipa 1
%
% Definicija:
%  tri = triuniform(N,M,type)
%
% Vhodni podatki:
%  N, M    mreza tipa 1 ali tipa 2 velikosti NxM
%  type    tip triangulacije(1 ali 2)
%
% Izhodni podatek:
%  tri     triangulacija

if ~exist('M','var')
    M = N;
end

if ~exist('type','var')
    type = 1;
end

% enakomerna triangulacija tipa I
if type==1
    % tocke
    X = 0:N;
    Y = 0:M;
    [X,Y] = meshgrid(X,Y);
    
    V = [reshape(X',[],1),reshape(Y',[],1)];

    TRI = zeros(2*M*N,3);
    counter = 1;
    for i=1:M
        for j=1:N    
            TRI(counter,:) = [find(V(:,2)==Y(i,j) & V(:,1)==X(i,j)) find(V(:,2)==Y(i,j+1) & V(:,1)==X(i,j+1)) find(V(:,2)==Y(i+1,j+1) & V(:,1)==X(i+1,j+1))];
            TRI(counter+1,:) = [find(V(:,2)==Y(i+1,j+1) & V(:,1)==X(i+1,j+1)) find(V(:,2)==Y(i+1,j) & V(:,1)==X(i+1,j)) find(V(:,2)==Y(i,j) & V(:,1)==X(i,j))];
            counter = counter + 2;
        end
    end
    tri = triangulation(TRI,V);
    
% enakomerna triangulacija tipa II
elseif type==2
    % tocke
    X = -min(N-2,M-2):min(N-1,M-1);
    Y = 0:M;
    X_half = -min(N-2,M-2)+1/2:1:min(N-1,M-1);
    Y_half = 1/2:1:M;
    [X,Y] = meshgrid(X,Y);
    [X_half,Y_half] = meshgrid(X_half,Y_half);

    V = [reshape(X',[],1),reshape(Y',[],1); reshape(X_half',[],1),reshape(Y_half',[],1)];
    [~,indx] = sort(V(:,1));
    V = V(indx,:);
    
    TRI = zeros(4*(size(X,2)-1)*M,3);
    counter = 1;
    for i=1:M
        for j=1:size(X,2)-1
            TRI(counter,:) = [find(V(:,2)==Y(i,j) & V(:,1)==X(i,j)) find(V(:,2)==Y(i,j)+1/2 & V(:,1)==X(i,j)+1/2) find(V(:,2)==Y(i,j+1) & V(:,1)==X(i,j+1))];
            TRI(counter+1,:) = [find(V(:,2)==Y(i,j+1) & V(:,1)==X(i,j+1)) find(V(:,2)==Y(i,j)+1/2 & V(:,1)==X(i,j)+1/2) find(V(:,2)==Y(i+1,j+1) & V(:,1)==X(i+1,j+1))];
            TRI(counter+2,:) = [find(V(:,2)==Y(i+1,j+1) & V(:,1)==X(i+1,j+1)) find(V(:,2)==Y(i,j)+1/2 & V(:,1)==X(i,j)+1/2) find(V(:,2)==Y(i+1,j) & V(:,1)==X(i+1,j))];
            TRI(counter+3,:) = [find(V(:,2)==Y(i+1,j) & V(:,1)==X(i+1,j)) find(V(:,2)==Y(i,j)+1/2 & V(:,1)==X(i,j)+1/2) find(V(:,2)==Y(i,j) & V(:,1)==X(i,j))];
            counter = counter + 4;
        end
    end
    tri = triangulation(TRI,V);
end

end

