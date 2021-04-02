clc;
clear;
X=imread(".\koozeh.png");
X=im2gray(X);
figure(1),
imshow(X);
sizekoozeh=size(X);
for i=1:505
    for j=1:559
        if (X(i,j)==0)
            distanc= j-(sizekoozeh(2)/2);
            X(i,(sizekoozeh(2)/2)-distanc)=0;
        end
    end
end

   figure(2),
imshow(X);         