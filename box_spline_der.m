function D_Bijk = box_spline_der(i,j,k,B,smer)
% Opis:
%  box_spline_der izracuna odvod za skatlasti zlepek tipa 1
%  D_Bijk = D_smer B
%
% Definicija:
%  D_Bijk = box_spline_der(i,j,k,B,smer)
%
% Vhodni podatki:
%  i, j, k      parametri, ki doloèajo zlepek
%  B            matrika ustreznega zlepka stopnje n-1
%  smer         smer odvoda
%
% Izhodni podatek:
%  D_Bijk       matrika odvoda za skatlasti zlepek

st_delilnih = i+j+k-3;
vr = size(B,1);
st = size(B,2);
D_Bijk = zeros(st_delilnih*(j+k)+1, st_delilnih*(i+k)+1);

if smer == 1
    D_Bijk(:,1:st) = B;
    D_Bijk(:,end-st+1:end) = D_Bijk(:,end-st+1:end) - B;
    
elseif smer == 2
    D_Bijk(end-vr+1:end,:) = B;
    D_Bijk(1:vr,:) = D_Bijk(1:vr,:) - B;

else
    D_Bijk(end-vr+1:end,1:st) = B;
    D_Bijk(1:vr,end-st+1:end) = D_Bijk(1:vr,end-st+1:end) - B;
end

end

