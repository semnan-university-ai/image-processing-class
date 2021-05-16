close all
clear all
clc
pic = imread('..\..\..\benchmark\watch.png');
imshow(pic);
k=8;
for i=300:585
    for j=300:720
        r=pic(i,j,1);
        g=pic(i,j,2);
        b=pic(i,j,3);
        if(r-g<k)&&(r-b<k)&&(g-b<2)
            if(r>30)&&(r<140)&&(g>65)&&(g<140)&&(b>60)&&(b<140)
                pic(i,j,:)=255;
            end
        end
    end
end    

figure;
imshow(pic);
