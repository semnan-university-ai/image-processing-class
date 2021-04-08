clc;
clear;
close all;
pic=(imread('d:\tamrin\18\watch.png'));
picgray=rgb2gray(pic);
subplot(1,3,1),imshow(pic),title('Orginal');
R = pic(:, :, 1);G = pic(:, :, 2);B = pic(:, :, 3);
[sr,sc,sz] = size(pic);
for i=1:sr
   for j=1:sc
       if (R(i,j)< 100) &&(R(i,j)> 81) && (abs((G(i,j)-B(i,j)))< 2) 
            picgray(i,j) = 255;
            pic(i,j,1) = 255;pic(i,j,2) = 255;pic(i,j,3) = 255;
       end
   end
end
subplot(1,3,2),imshow(picgray),title('Gray');
subplot(1,3,3),imshow(pic),title('Color');