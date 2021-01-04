function Bn = box_splines(n,tri)

if n < 3
    error("Argument n mora biti vsaj 3");
end

if ~exist('tri')
    tri = triuniform(n);
end

X = 0:n-1;
[X,Y] = meshgrid(X);

Bn = cell(n-2,n-2);

B111 = @(x) (x(:,1)==1).*(x(:,2)==1);
if n == 3
    b111 = zeros(n,n);
    b111 = [B111([X(:,1), Y(:,1)]) B111([X(:,2), Y(:,2)]) B111([X(:,3), Y(:,3)])];
    Bn{1,1} = b111;
else
    trin_1 = triuniform(n-1);
    Bn_1 = box_splines(n-1,trin_1);
    
    for i=1:n-2
        for j=1:n-1-i
            k = n-i-j;
            
            if i==1 && j==1
                smer = 3;
                D_Bijk = box_spline_der(i,j,k,Bn_1{k-1,j},smer);
                
            elseif i==1
                smer = 2;
                D_Bijk = box_spline_der(i,j,k,Bn_1{k,j-1},smer);
                
            else
                smer = 1;
                D_Bijk = box_spline_der(i,j,k,Bn_1{k,j},smer);
            end
            
            Bn{k,j} = flip(round((n-2).*box_spline(i,j,k,smer,flip(D_Bijk))));
        end
    end
end

