image=imread('D:\matlab\math\bin\benchmark\negativeex13.jpg');  
image=rgb2gray(image);

black=0;
white=255; 
change_black_to=4;
change_white_to=250;

[row,column]=size(image); 
x = randi([0,255],row,column);
image(x <= black) = change_black_to;  
image(x >=white) = change_white_to;
meanIntensity = mean(image(:));
imshow(image)
disp(meanIntensity)
