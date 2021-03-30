clc;
clear;
close all;

w=1000;
image=zeros(w,20,'uint8');
step=round(w/255);

for c=1:256
    for y=(c*step)-step+1:step*c
        for  x=1:w
        image(y,x)=c-1;
        end
    end
end

imshow (image);
