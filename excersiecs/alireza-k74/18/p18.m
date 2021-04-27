img=imread('watch.png');
[a b]=find(img(:,:,1)>80 & img(:,:,1)<110 & img(:,:,2)>80 & img(:,:,2)<110 & img(:,:,3)>80 & img(:,:,3)<110);
imgout=double(img);
for ii=1:length(a)
    imgout(a(ii),b(ii),1:3)=255;
end


