function [img_with_noise]=with_noise(im)
    
     [m,n]=size(im);
     b=4;w=251;  
     img_with_noise= im; 
     
     x = randi([0,255],m,n);  
     img_with_noise(x <= b) = 0;  
     img_with_noise(x >=w) = 255;

  
end