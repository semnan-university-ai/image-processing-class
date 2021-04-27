[n p]=uigetfile;
img=imread([p n]);
[r c z]=size(img);
if z~=1
    img=rgb2gray(img);
end
L=100;
W=150;
imgcr=img(1:L,1:W);
imshow(imgcr)

