clc;
clear;
close all;
pic=(imread('../../../benchmark/pool.png'));
picgray=rgb2gray(pic);
subplot(2,2,1),imshow(pic),title('Orginal picture');
subplot(2,2,3),imshow(picgray),title('gray picture');
[r,c] = size(picgray);
for x=1:r
   for y=1:c
       if ((picgray(x,y) > 50) || (picgray(x,y) < 48)) && (x >230) && (y >355)
            picgray(x,y) = 49;
            pic(x,y,1) = 20;pic(x,y,2) = 70;pic(x,y,3) =20;
       end
   end
end
subplot(2,2,2),imshow(pic),title('without yellow ball');
subplot(2,2,4),imshow(picgray),title('gray and without ball');