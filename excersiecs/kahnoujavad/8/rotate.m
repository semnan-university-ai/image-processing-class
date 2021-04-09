clc;
clear all;
close all;
imgpad=imread("../benchmark/fruits.png");
imgpad=rgb2gray(imgpad);
imgru=zeros(size(imgpad),"uint8");
x=ceil((size(imgpad,1)+1)/2);
y=ceil((size(imgpad,2)+1)/2);
d=[45,120,90,180,270];
l=length(d);k=1;
subplot(2,(l+1)/2,1),imshow(imgpad),title('Orginal');
while (k <= l)
    imgru=zeros(size(imgpad),"uint8");
    r=(pi/180)*d(k);
    for i=1:size(imgru,1)
        for j=1:size(imgru,2)

             x= (i-x)*cos(r)+(j-y)*sin(r);
             y=-(i-x)*sin(r)+(j-y)*cos(r);
             x=round(x)+x;
             y=round(y)+y;

             if (x>=1 && y>=1 && x<=size(imgpad,1) && y<=size(imgpad,2))
                  imgru(i,j)=imgpad(x,y);        
             end

        end
    end
    subplot(2,(l+1)/2,k+1),imshow(imgru),title(int2str(d(k)));
    
    k=k+1;
end