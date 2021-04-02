close all
clear all
clc
pic = imread('C:\Users\PC\Desktop\watch.png');
subplot(1,2,1), imshow(pic), title('axe asli');
k=5;
for i=300:585
    for j=300:720
        r=pic(i,j,1);
        g=pic(i,j,2);
        b=pic(i,j,3);
        if(r-g<k)&&(r-b<k)&&(g-b<k)
            if(r>10)&&(g>35)&&(b>75)
                pic(i,j,:)=255;
            end
        end
    end
end    

subplot(1,2,2), imshow(pic), title('khorooji');