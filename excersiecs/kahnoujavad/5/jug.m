clc;
clear all;
close all;
image=imread("jug.ping");
[a,b,c]=size(img);

r = zeros(a, b*2, c,'uint8');

for x=1:a
   for y=1:b
       r(x,y,:) = image(x,y,:);
       r(x,b+y,:)=img(x,b-y+1,:);
   end
end
imshow(r);
