clc;
close all;
clear all;


image=e11_noise('benchmark/airplane.png',500);
[r,c]=size(image);


B=zeros(r,c);
for i=2:r-1
    for j=2:c-1
        pixels=[];
          for k=i-1:i+1  %3*3 median filter
            for m=j-1:j+1
                pixels=[pixels;image(k,m)];
            end
        end %3*3 median filter 
        mid =median(pixels);   
        B(i,j)=mid;
    end
end
figure;imshow(uint8 (B));
figure;imshow(image);