clc;
close all;
clear;

image=imread("koze.jpg");
[x_size,y_size,z_size]=size(image);
resimg = zeros(x_size, y_size*2, z_size,'uint8');
for x=1:x_size
   for y=1:y_size
       resimg(x,y,:) = image(x,y,:);
       resimg(x,y_size+y,:)=image(x,y_size-y+1,:);
   end
end
imshow(resimg);