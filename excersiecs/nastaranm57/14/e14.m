a = imread('images\10 am.jpg');
a=rgb2gray(a);
b = imread('images\11 am.jpg');
b=rgb2gray(b);
c = imread('images\12 pm.jpg');
c=rgb2gray(c);
d = imread('images\1 pm.jpg');
d=rgb2gray(d);
e = imread('images\2 pm.jpg');
e=rgb2gray(e);
f = imread('images\3 pm.jpg');
f=rgb2gray(f);
g = imread('images\4 pm.jpg');
g=rgb2gray(g);
h = imread('images\5 pm.jpg');
h=rgb2gray(h);
i = imread('images\6 pm.jpg');
i=rgb2gray(i);
j = imread('images\7 pm.jpg');
j=rgb2gray(j);
k = imread('images\8 pm.jpg');
k=rgb2gray(k);
l = imread('images\9 pm.jpg');
l=rgb2gray(l);

figure;
subplot(3,4,1)
imhist(a,45)
title('10 am')
subplot(3,4,2)
imhist(b,45)
title('11 am')
subplot(3,4,3)
imhist(c,45)
title('12 pm')
subplot(3,4,4)
imhist(d,45)
title('1 pm')
subplot(3,4,5)
imhist(e,45)
title('2 pm')
subplot(3,4,6)
imhist(f,45)
title('3 pm')
subplot(3,4,7)
imhist(g,45)
title('4 pm')
subplot(3,4,8)
imhist(h,45)
title('5 pm')
subplot(3,4,9)
imhist(i,45)
title('6 pm')
subplot(3,4,10)
imhist(j,45)
title('7 pm')
subplot(3,4,11)
imhist(k,45)
title('8 pm')
subplot(3,4,12)
imhist(l,45)
title('9 pm')
