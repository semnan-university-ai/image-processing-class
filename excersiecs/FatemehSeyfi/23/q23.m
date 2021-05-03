clc
clear data;
clear all;
image =imread('benchmark\baboon.png');
subplot(2,2,1);imshow(image);
Red = image(:,:,1);
Green = image(:,:,2);
Blue = image(:,:,3);
histogram(Red );
subplot(2,2,2);bar(ans);
title('Red');
histogram(Green );
subplot(2,2,3);bar(ans);
title('Green');
histogram(Blue );
subplot(2,2,4);bar(ans);
title('Blue');
function [count]=histogram(picture)
[columns,rows]=size(picture);
count=zeros(1,256);
for i=1:columns
 for j=1:rows
   m=picture(i,j);
   count(m+1)=count(m+1)+1;
end
end
end
