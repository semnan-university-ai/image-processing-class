clc;
clear all;
close all;
<<<<<<< Updated upstream
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
=======
img=imread("D:/image-processing-class/benchmark/girl.png");
img=rgb2gray(img);
rotimg=zeros(size(img),"uint8");
tx=ceil((size(img,1)+1)/2);
ty=ceil((size(img,2)+1)/2);
s=[45,90,180,270,360];
l=length(s);k=1;
subplot(2,(l+1)/2,1),imshow(img),title('Orginal');
while (k <= l)
    rotimg=zeros(size(img),"uint8");
    rt=(pi/180)*s(k);
    for i=1:size(rotimg,1)
        for j=1:size(rotimg,2)

             x= (i-tx)*cos(rt)+(j-ty)*sin(rt);
             y=-(i-tx)*sin(rt)+(j-ty)*cos(rt);
             x=round(x)+tx;
             y=round(y)+ty;

             if (x>=1 && y>=1 && x<=size(img,1) && y<=size(img,2))
                  rotimg(i,j)=img(x,y);        
>>>>>>> Stashed changes
             end

        end
    end
<<<<<<< Updated upstream
    subplot(2,(l+1)/2,m+1),imshow(imgro),title(int2str(zavia(m)));
=======
    subplot(2,(l+1)/2,k+1),imshow(rotimg),title(int2str(s(k)));
>>>>>>> Stashed changes
    
    m=m+1;
end