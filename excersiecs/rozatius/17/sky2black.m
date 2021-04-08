clc;clear;close all;
img=imread("../../../benchmark/mountain.png");
subplot(1,2,1),imshow(img),title('Orginal');
[m, n] = size(img);
for y=1:n
   for x=1:m
       if img(x,y) >200
          img(x,y) = 0;
       end
       if img(x+1,y)<180
          break;
       end        
   end
end
subplot(1,2,2),imshow(img),title('Edit');
