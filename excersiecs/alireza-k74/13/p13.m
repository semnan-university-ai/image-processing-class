img=imread('pool.png');
[r c z]=size(img);
if z~=1
    img=rgb2gray(img);
end
F=[];
for ratio=0.01:0.01:0.1
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
    F=[F [ratio;mean(mean(imgout))]];
end
F
