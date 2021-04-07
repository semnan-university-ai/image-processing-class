clc;
clear;
close all;
pic=imread('d:\tamrin\17\mountain.png');
subplot(2,2,1),imshow(pic),title('Orginal');
[a,b] = size(pic);
for i=1:a
   for j=1:b
       if  (pic(i,j) >223) && (pic(i,j) <241) 
            pic(i,j) = 0;
       end
   end
end
subplot(2,2,2),imshow(pic),title('Edit');
x = im2double(pic);
y = [];
%-------------------------Median filter 
for i=2:a-1
    for j=2:b-1
            y(1) = x(i-1,j-1);
            y(2) = x(i-1,j) ;
            y(3) = x(i-1,j+1);
            y(4) = x(i,j-1);
            y(5) = x(i,j+1);
            y(6) = x(i+1, j-1);
            y(7) = x(i+1,j);
            y(8) = x(i+1,j+1);
            x(i,j) = median(y);
    end
end 
subplot(2,2,3),imshow(x),title('Edit and filter');