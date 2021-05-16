clc;
clear all;
close all;

i1=imread('../benchmark/Lena.png');
i1=rgb2gray(i1);
i1=imresize(i1,[256 256]);
i2=imread('../benchmark/cameraman.tif');
i2=imresize(i2,[256 256]);
subplot(2,2,1);
imshow(i1);
title('Lena');

subplot(2,2,2);
imshow(i2);
title('cameraman');

i=sqrt(-1);

x1=fft2(i1);
r1=abs(x1);
teta1=angle(x1);

x2=fft2(i2);
r2=abs(x2);
%r2(:,:)=25000;
teta2=angle(x2);

x3=r1.*exp(i*teta2);
x4=r2.*exp(i*teta1);

subplot(2,2,3);
imshow(uint8(ifft2(x3)));
title('Lena + Cameraman Phase');

subplot(2,2,4);
imshow(uint8(ifft2(x4)));
title('Cameraman + Lena Phase');

