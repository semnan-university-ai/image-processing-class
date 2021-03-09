clc;
clear;
close all;

image = imread("img/girl.png");
image = rgb2gray(image);
image_size = size(image);
temp = zeros(1, 1);
figure, imshow(image);

for i = 1 : image_size(1, 1)
    
    for j = 1: image_size(1, 2)
    
        %if( image(i, j) > 40 && image(i, j) < 60)
        %    image(i, j) = ( image(i, j) - 40 ) + 110;
        %end
        
        %if( image(i, j) > 100 && image(i, j) < 130)
        %    image(i, j) = 200;
        %end
        
        %if( image(i, j) > 200 && image(i, j) < 240)
        %    image(i, j) = 30;
        %end
        
        %if( image(i, j) > 200 && image(i, j) < 230)
        %    image(i, j) = ( image(i, j) - 200 ) + 30;
        %end
        
        if( image(i, j) >= 200 && image(i, j) <= 230)
            temp(1, 1) = 30 - (dobule(image(i, j)) - 200);
            image(i, j) = uint8(temp(1, 1));
        end
        
        %if( image(i, j) > 40 && image(i, j) < 60)
            
        %    image(i, j) = 20;
        %end
        %if( image(i, j) > 60 && image(i, j) < 90)
        %    image(i, j) = 200;
        %end
        
        
    end
end

figure, imshow(image);