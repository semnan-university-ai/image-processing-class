img=imread('zelda.png');
img=rgb2gray(img);
mask=1-(img>150 & img<170);
imgout=(mask).*double(img);
imshow(uint8(imgout))
