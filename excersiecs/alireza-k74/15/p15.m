img=imread('pool.png');
img=rgb2gray(img);
mask=1-(img>100 & img<230);
imgout=(mask).*double(img);
imshow(uint8(imgout))
