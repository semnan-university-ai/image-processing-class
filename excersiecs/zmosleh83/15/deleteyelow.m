clc;clear;close all;
img=(imread("../../../benchmark/pool.png"));
imggray=rgb2gray(img);
subplot(2,2,1),imshow(img),title('Orginal-RGB');
subplot(2,2,3),imshow(imggray),title('Orginal-gray');
[sr,sc] = size(imggray);
for x=1:sr
   for y=1:sc
       if ((imggray(x,y) > 50) || (imggray(x,y) < 48)) && (x >230) && (y >355)
            imggray(x,y) = 49;
            img(x,y,1) = 20;img(x,y,2) = 70;img(x,y,3) =20;
       end
   end
end
subplot(2,2,2),imshow(img),title('Edited-RGB');
subplot(2,2,4),imshow(imggray),title('Edited-gray');