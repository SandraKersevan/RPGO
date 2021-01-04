N = 6;

Bn = box_splines(N);

%celldisp(Bn);
tri = triuniform(N);
triZ = triuniform(N-1);
TRI = tri.ConnectivityList;

% plot
for vr=1:N-2
    for st=1:N-2
        if size(Bn{vr,st},1) ~= 0
            figure
            k = vr;
            j = st;
            i = N-j-k;
            delitev = N-1;
            b = zeros((N-1)^2+1);
            B = fliplr(flip(Bn{vr,st}));
            b(1:size(B,1),1:size(B,2)) = B;
            X = linspace(0,i+k,size(b,2));
            Y = linspace(0,j+k,size(b,1));
            [X,Y] = meshgrid(X,Y);
            for t=1:size(TRI,1)
                V1 = tri.Points(TRI(t,1),:);
                V2 = tri.Points(TRI(t,2),:);
                V3 = tri.Points(TRI(t,3),:);
                v = min(V1(2),V3(2));
                s = min(V1(1),V2(1));
                x = X((delitev-1)*v+1:(delitev-1)*v+delitev,(delitev-1)*s+1:(delitev-1)*s+delitev);
                y = Y((delitev-1)*v+1:(delitev-1)*v+delitev,(delitev-1)*s+1:(delitev-1)*s+delitev);
                z = b((delitev-1)*v+1:(delitev-1)*v+delitev,(delitev-1)*s+1:(delitev-1)*s+delitev);
                x1 = []; y1 = []; z1 = [];
                if v==V1(2)
                    for triv=1:delitev
                        for tris=triv:delitev
                            x1 = [x1 x(triv,tris)];
                            y1 = [y1 y(triv,tris)];
                            z1 = [z1 z(triv,tris)];
                        end
                    end
                else
                    for triv=1:delitev
                        for tris=1:triv
                            x1 = [x1 x(triv,tris)];
                            y1 = [y1 y(triv,tris)];
                            z1 = [z1 z(triv,tris)];
                        end
                    end
                end
                hold on
                trisurf(delaunay(x1',y1'),x1',y1',z1')
            end
        end
    end
end
