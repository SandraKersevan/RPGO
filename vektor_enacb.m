function v1 = vektor_enacb(N,smer,indeksi)
v1 = zeros(N*(N-1)/2-(N-1),(N-1)*N/2);
new_row = 0;
for e=1:N*(N-1)/2-(N-1)
    if smer==1 || smer == 3
        en = e + new_row;
        if indeksi(en)==indeksi(en+1)-1
            if smer==1
                v1(e,[en en+1]) = [-1 1];
            else
                v1(e,[en en+(N-1-new_row)]) = [-1 1];
            end
        else
            new_row = new_row+1;
            if smer==1
                v1(e,[en+1 en+2]) = [-1 1];
            else
                v1(e,[en+1 en+1+(N-1-new_row)]) = [-1 1];
            end
        end
    else
        en = e + 1 + new_row;
        if indeksi(en-1)==indeksi(en)-1
            v1(e,[en en+(N-2-new_row)]) = [-1 1];
        else
            new_row = new_row+1;
            v1(e,[en+1 en+1+(N-2-new_row)]) = [-1 1];
        end
    end
end
end

