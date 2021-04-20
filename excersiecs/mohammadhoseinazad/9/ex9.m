 
image=imread('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\lena.png');

x=input('enter x value for cutting=');
y=input('enter y value for cutting=');

croppedImage = imcrop(image, [0, 0, x, y]);
imshow(croppedImage);