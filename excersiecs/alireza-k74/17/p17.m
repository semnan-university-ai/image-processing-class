img=imread('mountains.png');
img=rgb2gray(img);
mask=1-(img>220 & img<250);
imgout=(mask).*double(img);
imshow(uint8(imgout))
