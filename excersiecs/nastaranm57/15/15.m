a=imread('C:\Users\PC\Desktop\pool.png');
b=rgb2gray(a);
mask=roipoly(b);
imshow(mask);
j=regionfill(b,mask);
figure;
imshow(j);