clc;
clear all;
close all;
img=imread('D:/image-processing-class/benchmark/girl.png');
imgry=rgb2gray(img);
imgro=zeros(size(imgry),'uint8');
cx=ceil((size(imgry,1)+1)/2);
cy=ceil((size(imgry,2)+1)/2);
zavia=[45,90,120,180,270];
l=length(zavia);
m=1;
subplot(2,(l+1)/2,1),imshow(imgry),title('orginal image');
while (m <= l)
    imgro=zeros(size(imgry),'uint8');
    p=(pi/180)*zavia(m);
    for i=1:size(imgro,1)
        for j=1:size(imgro,2)

            a= (i-cx)*cos(p)+(j-cy)*sin(p);
             b=-(i-cx)*sin(p)+(j-cy)*cos(p);
             a=round(a)+cx;
             b=round(b)+cy;

             if (a>=1 && b>=1 && a<=size(imgry,1) && b<=size(imgry,2))
                  imgro(i,j)=imgry(a,b);        
             end

        end
    end
    subplot(2,(l+1)/2,m+1),imshow(imgro),title(int2str(zavia(m)));
    
    m=m+1;
end