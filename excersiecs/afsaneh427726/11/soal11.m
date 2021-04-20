clc;
clear data;
clear all;
image=imread('C:\Users\as\Downloads\boat.png');
a=size(image);
for m=1:4000
    i=randi(a(1));
    j=randi(a(2));
    image(i,j)=0;
end
for m=1:4000
    i=randi(a(1));
    j=randi(a(2));
    image(i,j)=255;
end

imshow(image);
    