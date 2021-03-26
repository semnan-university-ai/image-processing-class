function imageOut = e11_noise(name,numbers)
%E11_NOISE Summary of this function goes here
%   Detailed explanation goes here
image = imread(name);
imageSize=size(image);
width=imageSize(1,1);
height=imageSize(1,2);
n=size(imageSize)
colors=[0 255]
if n(2)==3
    image=rgb2gray(image);
end
for k=1:numbers
    
    widthRand=randi(width);
    heightRand=randi(height);
    
    image(widthRand,heightRand)=colors(randi(2));
end
imageOut=image;

