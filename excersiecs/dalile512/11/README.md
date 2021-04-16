
<div dir ="rtl">

تمرین 11:<br/>
ابتدا تصویر را می خوانیم.<br/>

</div>

```
image = imread('saat.png');
figure;
ax1 = axes();
```
<div dir ="rtl">


نمایش  تصویر اصلی: <br/>

</div>


```
imshow(image);
title(ax1, 'original image');
```

<div dir ="rtl">

10٪ پیکسل تغییر کرده است.<br/>

</div>


```
a = 0.1; 
```
<div dir ="rtl">

 50٪ درصد پیکسل های سفید در میان همه پیکسل های تغییر یافته.<br/>

</div>

```
b = 0.5; 
```

<div dir ="rtl">

 حال به صورت رندوم ،نقاط نویز را ایجاد می کند.<br/>

</div>



```
n = numel(image(:,:,1));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
idx1 = idx1' + n.*(0:size(image,3)-1);
idx1 = idx1(:);
idx2 = idx2' + n.*(0:size(image,3)-1);
idx2 = idx2(:);
image(idx1) = 255;
image(idx2) = 0;
```

<div dir ="rtl">

 نمایش تصویر نویز فلفلی:<br/>

</div>

```
figure;
ax2 = axes();
imshow(image);
title(ax2, 'noisy  image ');

```


out=![out](t11.JPG)




