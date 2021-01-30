% GRAPH FOR FUNCTION F ON INTERVAL [0,a]x[0,b] with box splines
%f = @(x,y) (x <= y).*(x - y).^3 - (x > y).*(x - y).^3;
f = @(x,y) sin(x).*cos(y);
%f = @(x,y) 3.*(1-x).^2.*exp(-x.^2-(y+1).^2)-10.*(x./5-x.^3-y.^5).*exp(-x.^2-y.^2)-1/3.*exp(-(x+1).^2-y.^2);
a = 3; b = 3;

% triangulation
tri = triuniform(a,b);
V = tri.Points;

% Approximation with B222
i = 2; j = 2; k = 2;
N = i+j+k;
S = box_splines(N);
B = S{k,j};

X = linspace(0,a,a*(N-2)+1);
Y = linspace(0,b,b*(N-2)+1);
[X,Y] = meshgrid(X,Y);

B_new = [zeros((b-1)*(N-2),size(B,2)+2*(a-1)*(N-2)); zeros(size(B,1),(a-1)*(N-2)) B zeros(size(B,1),(a-1)*(N-2)); zeros((b-1)*(N-2),size(B,2)+2*(a-1)*(N-2))];

C = cell(j+k+b-1,i+k+a-1); % control poligon of splines 
C_b = cell(j+k+b-1,i+k+a-1); % actual values of splines 

for vr=1:j+k+b-1
    for st=1:i+k+a-1
        C{vr,st} = B_new((vr-1)*(N-2)+1:(vr-1)*(N-2)+b*(N-2)+1,(st-1)*(N-2)+1:(st-1)*(N-2)+a*(N-2)+1);
        final = zeros(size(C{vr,st}));
        flipan = flip(C{vr,st});
        for sqv=1:b
            for sqs=1:a
                %square [st-1,st]x[vr-1,vr]
                x = X((sqv-1)*(N-2)+1:(sqv-1)*(N-2)+N-1,(sqs-1)*(N-2)+1:(sqs-1)*(N-2)+N-1);
                y = Y((sqv-1)*(N-2)+1:(sqv-1)*(N-2)+N-1,(sqs-1)*(N-2)+1:(sqs-1)*(N-2)+N-1);
                z = flipan((sqv-1)*(N-2)+1:(sqv-1)*(N-2)+N-1,(sqs-1)*(N-2)+1:(sqs-1)*(N-2)+N-1);
                new = zeros(size(z));                
                
                for xx=1:size(x,2)
                    for yy=1:size(x,1)
                        if xx >= yy
                            T = [x(end,1) y(end,1); x(end,end) y(end,end); x(1,1) y(1,1)];
                            new(xx,yy) = decasteljau3(flip(z),pointbary([x(xx,yy) y(xx,yy)],T));
                        else
                            T = [x(1,end) y(1,end); x(1,1) y(1,1); x(end,end) y(end,end)];
                            new(xx,yy) = decasteljau3(fliplr(z),pointbary([x(xx,yy) y(xx,yy)],T));
                        end
                    end
                end
                final((sqv-1)*(N-2)+1:(sqv-1)*(N-2)+N-1,(sqs-1)*(N-2)+1:(sqs-1)*(N-2)+N-1) = new;
            end
            C_b{vr,st} = flip(final);
        end
    end
end

A = [];

% remove splines that are equal to 0
delete = ones(size(C{1,1}(:),1),1);

c = 1;
for sqv=1:j+k+b-1
    for sqs=1:i+k+a-1
        if ~any(C_b{sqv, sqs}(:))
            delete(c) = 0;
        else
            A = [A reshape(C_b{sqv, sqs}',1,[])'];
        end
        c = c+1;
    end
end

% values of f in points
F = f(reshape(X',1,[])',flip(reshape(Y',1,[])'));

x = A\F; % coefs for every spline in series

% construction of box spline series
c = 1;
d = 1;
B = zeros(size(C{1,1}));
for sqv=1:j+k+b-1
    for sqs=1:i+k+a-1
        if delete(c)
            B = B + x(d).*C{sqv,sqs};
            d = d+1;
        end
        c = c+1;
    end
end

B = flip(B);

% plot and error
figure
napake = [];
for vr=1:b
    for st=1:a
        % square [st-1,st]x[vr-1,vr]
        x = X((vr-1)*(N-2)+1:(vr-1)*(N-2)+N-1,(st-1)*(N-2)+1:(st-1)*(N-2)+N-1);
        y = Y((vr-1)*(N-2)+1:(vr-1)*(N-2)+N-1,(st-1)*(N-2)+1:(st-1)*(N-2)+N-1);
        z = B((vr-1)*(N-2)+1:(vr-1)*(N-2)+N-1,(st-1)*(N-2)+1:(st-1)*(N-2)+N-1);
        
        for xx=1:size(x,2)
            for yy=1:size(x,1)
                if xx >= yy
                    T = [x(end,1) y(end,1); x(end,end) y(end,end); x(1,1) y(1,1)];
                    napake = [napake f(x(xx,yy),y(xx,yy))-decasteljau3(flip(z),pointbary([x(xx,yy) y(xx,yy)],T))];
                elseif yy <= xx
                    T = [x(1,end) y(1,end); x(1,1) y(1,1); x(end,end) y(end,end)];                   
                    napake = [napake f(x(xx,yy),y(xx,yy))-decasteljau3(fliplr(z),pointbary([x(xx,yy) y(xx,yy)],T))];
                end
            end
        end
        
        plotbezier3(flip(x),flip(y),flip(z),10)
        plotbezier3(fliplr(x),fliplr(y),fliplr(z),10)
    end
end

[XX,YY] = meshgrid(linspace(0,a,100),linspace(0,b,100));
plot3(XX,YY,f(XX,YY))

napaka = norm(napake,inf)

