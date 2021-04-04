clc;
clear;
close all;

orginalPic=imread('girl.png');
if size(size(orginalPic))==3
    grayPic=rgb2gray(orginalPic);
    picSize=size(grayPic);
else
    grayPic=orginalPic;
    picSize=size(orginalPic);
end


%negativePic

for x =1: picSize(2)
    for y =1 : picSize(1)
        negativePic(y,x)=255-grayPic(y,x);
    end
end

%noise
tedad=4;
y=0;
for i=1 : tedad
noise=randi([1,20]);
x = randi([0,255],picSize(1),picSize(2));
negativePic(x <= noise+0) = 0;  
negativePic(x >=255-noise) = 255;
averagesum=0;
    for m=1 : picSize(2)
        for n=1: picSize(1)
           averagesum=sum(sum(negativePic));
            %y=y+temp;
        end
    end
    average(i)=averagesum/(n*m);
    figure, imshow(negativePic);
end

