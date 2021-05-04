clc;
close all;
clear;


image = imread("../../../benchmark/mountain.png");
[rows, cols] = size(image);



% image = imresize(image, [400 400]);



for i = 2 : cols
    
    for j = 2 : rows
        
        if image(j, i) > 200 
            image(j,i) = 0;
            
        else
            break
        end
        
    
    end
    
end


imshow(image);