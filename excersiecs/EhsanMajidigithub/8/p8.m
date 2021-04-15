clc;clear;close all;
imagepad=imread("../../../benchmark/cat.png");
imagepad=rgb2gray(imagepad);
imagerot=zeros(size(imagepad),"uint8");
%midpoints
midx=ceil((size(imagepad,1)+1)/2);
midy=ceil((size(imagepad,2)+1)/2);
dd=[45,120,90,180,270];
l=length(dd);k=1;
subplot(2,(l+1)/2,1),imshow(imagepad),title('Orginal');
while (k <= l)
    imagerot=zeros(size(imagepad),"uint8");
    rad=(pi/180)*dd(k);
    for i=1:size(imagerot,1)
        for j=1:size(imagerot,2)

             x= (i-midx)*cos(rad)+(j-midy)*sin(rad);
             y=-(i-midx)*sin(rad)+(j-midy)*cos(rad);
             x=round(x)+midx;
             y=round(y)+midy;

             if (x>=1 && y>=1 && x<=size(imagepad,1) && y<=size(imagepad,2))
                  imagerot(i,j)=imagepad(x,y);        
             end

        end
    end
    subplot(2,(l+1)/2,k+1),imshow(imagerot),title(int2str(dd(k)));
    
    k=k+1;
end
