clc
clear
close all
  
image=imread('peppers.png');
size=size(image);
for i=1:size(1)
    for j=1:size(2)
        for k=1:size(3)
        if image(i,j,k)<=50
            image(i,j,k)=0;
        end
        if (image(i,j,k)>=51)&&(image(i,j,k)<=101)
                image(i,j,k) = 51;
        end
        if (image(i,j,k)>=102)&&(image(i,j,k)<=152)
                image(i,j,k) = 102;
        end
        if (image(i,j,k)>=153)&&(image(i,j,k)<=203)
                image(i,j,k) = 153;
        end
        if (image(i,j,k)>=204)&&(image(i,j,k)<=254)
                image(i,j,k) = 204;
        end
            if (image(i,j,k)==255)
                image(i,j,k) = 255;
            end
        end
    end
end
image=uint8(image);
imshow(image)
