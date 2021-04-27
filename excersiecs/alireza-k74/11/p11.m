[n p]=uigetfile;
img=imread([p n]);
[r c z]=size(img);
if z~=1
    img=rgb2gray(img)
end
ratio=0.02;
N=fix(r.*c.*ratio);
g1=ceil(r.*rand(1,N));
g2=ceil(c.*rand(1,N));
imgout=img;
for ii=1:N
    f=rand(1);
    if f>0.5
        imgout(g1(ii),g2(ii))=255;
    else
        imgout(g1(ii),g2(ii))=0;
    end
end  
subplot(1,2,1)
imshow(img)
subplot(1,2,2)
imshow(imgout)
