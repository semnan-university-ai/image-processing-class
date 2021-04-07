clc;
clear;
close all;
pic=imread('d:\tamrin\8\yas.jpg');
pic=rgb2gray(pic);
picrot=zeros(size(pic),'uint8');
centerx=ceil((size(pic,1)+1)/2);
centry=ceil((size(pic,2)+1)/2);
dgree=[45,90,120,180,270];
l=length(dgree);
a=1;
subplot(2,(l+1)/2,1),imshow(pic),title('orginal picture');
while (a <= l)
    picrot=zeros(size(pic),'uint8');
    rr=(pi/180)*dgree(a);
    for i=1:size(picrot,1)
        for j=1:size(picrot,2)

             x= (i-centerx)*cos(rr)+(j-centry)*sin(rr);
             y=-(i-centerx)*sin(rr)+(j-centry)*cos(rr);
             x=round(x)+centerx;
             y=round(y)+centry;

             if (x>=1 && y>=1 && x<=size(pic,1) && y<=size(pic,2))
                  picrot(i,j)=pic(x,y);        
             end

        end
    end
    subplot(2,(l+1)/2,a+1),imshow(picrot),title(int2str(dgree(a)));
    
    a=a+1;
end