clc;
clear;
close all;

orginalPic=imread('girl.png');

x=size(size(orginalPic),2);
if x==3
    grayPic=rgb2gray(orginalPic);
else
    grayPic=orginalPic;
end

picSize=size(grayPic);

%negativePic
negativePic = 255 - grayPic;

%noise
tedad=4;
for i=1 : tedad
noisPic=negativePic;
noise=randi([1,30]);

x = randi([0,255],picSize(1),picSize(2));
noisPic(x <= noise+0) = 0;  
noisPic(x >=255-noise) = 255;
average(i)=sum(noisPic(:))/(picSize(1)*picSize(2));

    subplot(2,3,i);
    imshow(noisPic),title(average(i));
end
    
    subplot(2,3,tedad+1);
    plot(average);
    
xlswrite('average.xls',average);
