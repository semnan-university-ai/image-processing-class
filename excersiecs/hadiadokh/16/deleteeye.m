clc;clear;close all;
img=(imread('d:\tamrin\16\zelda.png'));
figure,imshow(img);
[r,c] = size(img);
for x=1:r
   for y=1:c
       if img(x,y)>40 && x>260 && y>210 && x<280 && y<260
            img(x,y) = 120;
       end
       if img(x,y)>40 && x>260 && y>305 && x<280 && y<350
            img(x,y) = 120;
       end
   end
end
figure,imshow(img);