%resolution
M = 7680;
N = 4320;
%number of rows & colmns
C = input('number of rows=');
F = input('number of columns=');
I = chessboard3(N,M,C,F);
imshow(I);  
function [makeboard] = chessboard3(N,M,C,F)
L1 = floor(M/C);
L2 = floor(N/F);
k = 1;
for m=1:L1:M
    for n=1:L2:N
        makeboard(m:m+L1-1,n:n+L2-1)=ones(L1,L2)*(cos(k*pi));
        k=k+1;
    end
    k=k+1;
end
end