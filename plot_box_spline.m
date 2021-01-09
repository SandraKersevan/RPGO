function plot_box_spline(i,j,k,d)
% graf škatlastega zlepka z uporabo plotbezier3(Bx,By,Bz,d) na vsakem
% trikotniku

N = i+j+k;

Bn = box_splines(N);
tri = triuniform(i+k,j+k);
TRI = tri.ConnectivityList;

B = Bn{k,j};
B = flip(B);

delitev = N-1;
X = linspace(0,i+k,size(B,2));
Y = linspace(0,j+k,size(B,1));
[X,Y] = meshgrid(X,Y);
for t=1:size(TRI,1)
    V1 = tri.Points(TRI(t,1),:);
    V2 = tri.Points(TRI(t,2),:);
    V3 = tri.Points(TRI(t,3),:);
    v = min(V1(2),V3(2));
    s = min(V1(1),V2(1));
    x = X((delitev-1)*v+1:(delitev-1)*v+delitev,(delitev-1)*s+1:(delitev-1)*s+delitev);
    y = Y((delitev-1)*v+1:(delitev-1)*v+delitev,(delitev-1)*s+1:(delitev-1)*s+delitev);
    z = B((delitev-1)*v+1:(delitev-1)*v+delitev,(delitev-1)*s+1:(delitev-1)*s+delitev);
    x1 = nan(size(x)); y1 = nan(size(x)); z1 = nan(size(x));
    if v==V1(2)
        x1 = flip(fliplr(x));
        y1 = y;
        z1 = fliplr(z);
    else
        x1 = x;
        y1 = flip(y);
        z1 = flip(z);
    end
    plotbezier3(x1,y1,z1,d)
end

end

