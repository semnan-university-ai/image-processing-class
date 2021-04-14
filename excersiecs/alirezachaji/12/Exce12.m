close all
clear all
clc
a=pepper_noise("benchmark\lena.png",10);
p=imread('benchmark\lena.png');
n=size(a);
subplot(2,2,1);imshow(p);
subplot(2,2,2);imshow(a);
pic=zeros(n(1)+2,n(2)+2);
for i=1:n(1)
    for j=1:n(2)
        pic(i+1,j+1)=a(i,j);
    end
end
n=size(pic);
pic=uint8(pic);
for i=2:n(1)-1
    for j=2:n(2)-1
        p123=((double(pic(i-1,j-1))+double(pic(i-1,j))+double(pic(i-1,j+1))));
        p456=((double(pic(i,j-1))+double(pic(i,j))+double(pic(i,j+1))));
        p789=((double(pic(i+1,j-1))+double(pic(i+1,j))+double(pic(i+1,j+1))));
        p=round((p123+p456+p789)/9);
        p=uint8(p);
        a(i-1,j-1)=p;
    end
end 
subplot(2,2,3);imshow(a);
m=zeros(9,3);
for i=2:n(1)-1
    for j=2:n(2)-1
        m(1:3)=pic(i-1,j-1:j+1);
        m(4:6)=pic(i,j-1:j+1);
        m(7:9)=pic(i+1,j-1:j+1);
        M=sort(m);
        a(i-1,j-1)=M(5);
    end
end    
subplot(2,2,4);imshow(a);

