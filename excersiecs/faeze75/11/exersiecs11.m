clc
clear
close all

image=imread('lena.png'); 
size=(size(image));        
colors=[0 255];        
if size(3)==3             
    image=rgb2gray(image);
end

for i=1:10000            
    x=randi( size(1));
    y=randi( size(2));
    image(x,y)=colors(randi(2));
 
end
 imshow(image)
