i1 = imread('img12\1.jpg');
i1=rgb2gray(i1);
i2 = imread('img12\2.jpg');
i2=rgb2gray(i2);
i3 = imread('img12\3.jpg');
i3=rgb2gray(i3);
i4 = imread('img12\4.jpg');
i4=rgb2gray(i4);
i5 = imread('img12\5.jpg');
i5=rgb2gray(i5);
i6 = imread('img12\6.jpg');
i6=rgb2gray(i6);
i7 = imread('img12\7.jpg');
i7=rgb2gray(i7);
i8 = imread('img12\8.jpg');
i8=rgb2gray(i8);
i9 = imread('img12\9.jpg');
i9=rgb2gray(i9);
i10 = imread('img12\10.jpg');
i10=rgb2gray(i10);
i11 = imread('img12\11.jpg');
i11=rgb2gray(i11);
i12 = imread('img12\12.jpg');
i12=rgb2gray(i12);

figure;
subplot(3,4,1)
imhist(i1)
subplot(3,4,2)
imhist(i2)
subplot(3,4,3)
imhist(i3)
subplot(3,4,4)
imhist(i4)
subplot(3,4,5)
imhist(i5)
subplot(3,4,6)
imhist(i6)
subplot(3,4,7)
imhist(i7)
subplot(3,4,8)
imhist(i8)
subplot(3,4,9)
imhist(i9)
subplot(3,4,10)
imhist(i10)
subplot(3,4,11)
imhist(i11)
subplot(3,4,12)
imhist(i12)
