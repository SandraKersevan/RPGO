function Bijk = box_spline(i,j,k,smer,D_Bijk)

N = i+j+k;
C = intoSquares(i,j,k,D_Bijk);
delitev = N-1;
delitev_D = N-2;

% A x = B
% stevilo vrstic Bijk
n = (delitev-1)*(j+k)+1;
% stevilo stolpcev
m = (delitev-1)*(i+k)+1;

st_enacb = size(D_Bijk,1)*(size(D_Bijk,2)-1);
B = zeros(st_enacb,1);
A = zeros(st_enacb,n*m);

enacba = 1;

for sqv=1:j+k
    for sqs=1:i+k
        D = C{sqv,sqs};     
        
        % first triangle
        for vr=1:delitev_D
            for st=vr:delitev_D
                e = zeros(n,m);
                e_s = zeros(delitev,delitev);
                if smer==1
                    e_s(vr,st:st+1) = [-1 1];
                    e((sqv-1)*(delitev-1)+1:(sqv-1)*(delitev-1)+delitev,(sqs-1)*(delitev-1)+1:(sqs-1)*(delitev-1)+delitev) = e_s;
                elseif smer == 2
                    e_s(vr:vr+1,st+1) = [-1 1];
                    e((sqv-1)*(delitev-1)+1:(sqv-1)*(delitev-1)+delitev,(sqs-1)*(delitev-1)+1:(sqs-1)*(delitev-1)+delitev) = e_s;
                else
                    e_s(vr:vr+1,st:st+1) = [-1 0; 0 1];
                    e((sqv-1)*(delitev-1)+1:(sqv-1)*(delitev-1)+delitev,(sqs-1)*(delitev-1)+1:(sqs-1)*(delitev-1)+delitev) = e_s;
                end
                A(enacba,:) = reshape(e',1,[]);
                B(enacba) = D(vr,st);
                enacba = enacba+1;
            end
        end
                  
        % second triangle
        for vr=1:delitev_D
            for st=1:vr
                e = zeros(n,m);
                e_s = zeros(delitev,delitev);
                if smer==1
                    e_s(vr+1,st:st+1) = [-1 1];
                    e((sqv-1)*(delitev-1)+1:(sqv-1)*(delitev-1)+delitev,(sqs-1)*(delitev-1)+1:(sqs-1)*(delitev-1)+delitev) = e_s;
                elseif smer==2
                    e_s(vr:vr+1,st) = [-1 1];
                    e((sqv-1)*(delitev-1)+1:(sqv-1)*(delitev-1)+delitev,(sqs-1)*(delitev-1)+1:(sqs-1)*(delitev-1)+delitev) = e_s;
                else
                    e_s(vr:vr+1,st:st+1) = [-1 0; 0 1];
                    e((sqv-1)*(delitev-1)+1:(sqv-1)*(delitev-1)+delitev,(sqs-1)*(delitev-1)+1:(sqs-1)*(delitev-1)+delitev) = e_s;
                end
                
                A(enacba,:) = reshape(e',1,[]);
                B(enacba) = D(vr,st);
                enacba = enacba+1;
            end
        end
    end
end

c = A\B;

Bijk = zeros(n, m);
for v=1:n
    Bijk(v,:) = c((v-1)*m+1:v*m)';
end
%Bijk = flip(Bijk);
%Bijk = Bijk(n-2*(j+k):end,1:2*(i+k)+1);

end