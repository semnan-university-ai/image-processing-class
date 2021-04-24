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
imgn=img;
for ii=1:N
    f=rand(1);
    if f>0.5
        imgn(g1(ii),g2(ii))=255;
    else
        imgn(g1(ii),g2(ii))=0;
    end
end  
subplot(2,2,1)
imshow(img)
subplot(2,2,2)
imshow(imgn)
M=3;
imgmean=imgn;
imgmedian=imgn;
for ii=1+fix(M/2):r-fix(M/2)
    for jj=1+fix(M/2):c-fix(M/2)
        T=reshape(imgn(ii-fix(M./2):ii+fix(M./2),jj-fix(M./2):jj+fix(M./2)),1,[]);
        imgmean(ii,jj)=mean(T);
        imgmedian(ii,jj)=median(T);
    end
end
subplot(2,2,3)
imshow(imgmean)
subplot(2,2,4)
imshow(imgmedian)
