 clc;
 clear all;
 close all;


s=400;
m=500;
n=500;
image =zeros(1000);
for t =0:1/s:2*pi
    a = round(s * cos(t)) + m;
    b = round(s * sin(t)) + n;
    image(a, b)=1;
end
imshow(image);