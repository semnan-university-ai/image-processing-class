image=imread('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\lena.png');  
image=rgb2gray(image);

black=input('enter black(0) pixel value=');
white=input('enter white(255) pixel value='); 
change_black_to=input('enter exchange pixel value for black pixel=');
change_white_to=input('enter black pixel for white pixel=');

[row,column]=size(image); 
x = randi([0,255],row,column);
image(x <= black) = change_black_to;  
image(x >=white) = change_white_to;
imshow(image)