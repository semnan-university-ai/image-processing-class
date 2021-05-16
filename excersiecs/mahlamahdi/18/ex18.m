close all
clear all
clc
pic = imread('watch.png');
pic2= rgb2gray(pic);
subplot(1,2,1), imshow(pic), title('axe asli');
[m , n ] = size (pic2);
for i=300:m-150
    for j=300:n-300
        r=pic(i,j,1);
        g=pic(i,j,2);
        b=pic(i,j,3);
         if((abs(r-b)<3) && (abs(r-g)<3)&&(abs(b-g)<10))
              pic2(i,j)=255;
        end 
    end
end    

subplot(1,2,2), imshow(pic2), title('khorooji');
