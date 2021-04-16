function img_out=image_cut(address)
% this function recieve and image address convert it to gray mode and 
%return a 100 x 100 peace of that 
a=imread(address);
a=uint8(a);
n=size(size(a));
if (n(2)==3)
    a=rgb2gray(a);
end 
pic=zeros(100,100);
imsize=size(a);
for i=1:100
    for j=1:100
        pic(i,j)=a((imsize(1)-101+i),(imsize(2)-101+j));
    end
end
pic=uint8(pic);
img_out=pic;
