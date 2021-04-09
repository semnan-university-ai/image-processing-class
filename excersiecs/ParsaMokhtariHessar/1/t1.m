clc;
close all;
clear all;
r=8;
image = zeros(100*r,100*r);


for i=1 : r*100
    if floor(mod( i/100 , 2 )) == 0 
        for j=1 : r*100
            if floor(mod( j/100 , 2 )) == 0 
                image(i, j) = 255;
            end    
            if floor(mod( j/100 , 2 )) == 1 
                image(i, j) = 0;
            end        
        end 
    end
    if floor(mod( i/100 , 2 )) == 1 
        for j=1 : r*100
            if floor(mod( j/100 , 2 )) == 0 
                image(i, j) = 0;
            end    
            if floor(mod( j/100 , 2 )) == 1 
                image(i, j) = 255;
            end        
        end 
    end
end

figure,
imshow(image);

