clc;
clear all;
close all;
image=imread("D:/image-processing-class/benchmark/mountain.png");
subplot(2,2,1),imshow(image),title('orginala sky');  %tasvir orginal
[a,b]=size(image);
for j=1:b
    for i=1:a
       if image(i,j) >200
          image(i,j) = 0;
       end
       if image(i+1,j)<180
          break;
       end        
   end
end
subplot(2,1,1),imshow(image),title('Non orginal sky');  %tasvir non orginal