function [image] = im (a,b)
 image = zeros(0);
for i = 1 : a
    if b(1,i) < 1
        b(1,i) = 1;
    end
    if b(1,i) > 26
        b(1,i) = 26;
    end
    %%
alphabet(:,:,1) = dlmread('alphabet\A.txt');
alphabet(:,:,2) = dlmread('alphabet\B.txt');
alphabet(:,:,3) = dlmread('alphabet\C.txt');
alphabet(:,:,4) = dlmread('alphabet\D.txt');
alphabet(:,:,5) = dlmread('alphabet\E.txt');
alphabet(:,:,6) = dlmread('alphabet\F.txt');
alphabet(:,:,7) = dlmread('alphabet\G.txt');
alphabet(:,:,8) = dlmread('alphabet\H.txt');
alphabet(:,:,9) = dlmread('alphabet\I.txt');
alphabet(:,:,10) = dlmread('alphabet\J.txt');
alphabet(:,:,11) = dlmread('alphabet\K.txt');
alphabet(:,:,12) = dlmread('alphabet\L.txt');
alphabet(:,:,13) = dlmread('alphabet\M.txt');
alphabet(:,:,14) = dlmread('alphabet\N.txt');
alphabet(:,:,15) = dlmread('alphabet\O.txt');
alphabet(:,:,16) = dlmread('alphabet\P.txt');
alphabet(:,:,17) = dlmread('alphabet\Q.txt');
alphabet(:,:,18) = dlmread('alphabet\R.txt');
alphabet(:,:,19) = dlmread('alphabet\S.txt');
alphabet(:,:,20) = dlmread('alphabet\T.txt');
alphabet(:,:,21) = dlmread('alphabet\U.txt');
alphabet(:,:,22) = dlmread('alphabet\V.txt');
alphabet(:,:,23) = dlmread('alphabet\W.txt');
alphabet(:,:,24) = dlmread('alphabet\X.txt');
alphabet(:,:,25) = dlmread('alphabet\Y.txt');
alphabet(:,:,26) = dlmread('alphabet\Z.txt');
alphabet = uint8(alphabet);

%%
    image=[image alphabet(:,:,b(1,i))];
end
m=randi(2);    
     if  m==1
        image = imnoise(image,'salt & pepper',0.02);
    end  
    if  m==2
        image= imnoise(image,'speckle',3);
    end 
end