close all
clear all
clc
pic=zeros(500,500);
image_file=dir('*.png');
d=0;
for i=1:5
    for j=1:5
        d=d+1;
        a=image_cut(image_file(d).name);
        for ii=1:100
            for jj=1:100
                pic(i*100+ii-100,j*100+jj-100)=a(ii,jj);
            end
        end    
    end          
    
end 
pic=uint8(pic);
imshow(pic)
