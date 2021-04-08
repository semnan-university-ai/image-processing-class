clc;
clear;
X = imread('C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\pool.png');
X=im2gray(X);
imshow(X);
m=50;n=53;
im_size=size(X);
for i=10:im_size(1,1)-10
    for j=10:im_size(1,2)-10
        if(i>round(im_size(1,1)*0.6) && j>round(im_size(1,2)*0.7))
        if (X(i-1,j)<m && X(i,j)>n)
            k=i;l=j;
            while( X(k,l)>n)
             X(k,l)=255;
            k=k+1;
            end
        elseif (X(i-1,j-1)<m && X(i,j)>n)
            k=i;l=j;
            while( X(k,l)>n)
             X(k,l)=255;
            k=k+1;
            end
        elseif (X(i,j-1)<m && X(i,j)>n)
           k=i;l=j;
            while( X(k,l)>n)
             X(k,l)=255;
            k=k+1;
            end
        elseif (X(i,j+1)<m && X(i,j)>n)
           k=i;l=j;
            while( X(k,l)>n)
             X(k,l)=255;
            k=k+1;
            end
        elseif(X(i+1,j+1)<m && X(i,j)>n)
            k=i;l=j;
            while( X(k,l)>n)
             X(k,l)=255;
            k=k+1;
            end
        elseif(X(i,j+1)<m && X(i,j)>n)
           k=i;l=j;
            while( X(k,l)>n)
            X(k,l)=255;
            k=k+1;
            end
        end
        end
    end
end
figure(1),
imshow(X);