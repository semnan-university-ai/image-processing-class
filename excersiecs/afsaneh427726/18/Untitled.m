clc;
clear data;
clear all
image=imread('C:\Users\as\Downloads\watch.png');
a=imread('C:\Users\as\Downloads\watch.png');
% image=rgb2gray(image);
R = image(:, :, 1);
G = image(:, :, 2);
B = image(:, :, 3);
imtool(image);
k=0;
for j=333:694
    for i=295:586
        if (R(i,j)< 100) &&(R(i,j)> 81) && (abs((G(i,j)-B(i,j)))< 2) 
            image(i,j,1:3) = 255;
       end
        if (R(i,j)< 15) 
            image(i,j,1:3) = 255;
       end
        end
%         if (110<image(j,i,1:3))
%             image(j,i,1:3)=a(j,i,1:3);
%         end
        
     

    end
    
imshow(image);