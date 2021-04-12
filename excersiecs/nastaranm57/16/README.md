<div dir="rtl">
جواب سوال 16:
  برای حل این سوال از دو تکنیک استفاده می کنیم. تکنیک اول به این صورت است که برای حذف چشم ها، دو بار از دستور roi استفاده می شود (یعنی برای هر چشم یکبار). 
</div>

```
a=imread('C:\Users\PC\Desktop\zelda.png');
mask=roipoly(a);
imshow(mask);
j=regionfill(a,mask);
mask2=roipoly(j);
imshow(mask2);
k=regionfill(j,mask2);
figure;
imshow(k);
```
<div dir="rtl">
خروجی به صورت زیر است:
</div>

![khorooji](02566.jpg)

<div dir="rtl">
  با تشکر از آقای امید غلامی برای ارائه کد و توضیح تکنیک دوم:
  @omidgholami74

در تکنیک دوم، از مختصات دور چشم کمک گرفتیم. به این صورت که با استفاده از ابزاری که در تصویر زیر مشاهده می کنید، مختصات 6 نقطه دور چشم را برای هر چشم یادداشت کرده تا یک چند ضلعی روی چشم درست کنیم، و رنگ آن قسمت را به رنگ خاکستری در می آوریم
</div>

![khorooji](02682.jpg)

```
image =imread('C:\Users\PC\Desktop\zelda.png');
subplot(1,2,1)
imshow(image);
title 'tasvire asli'
eye_left=[212 272 221 277 233 280 245 279 259 273 251 263 234 258 220 262 ];
eye_right=[303 267 314 275 327 277 338 274 348 265 336 255 325 254 311 258];
colorCode=140;
image = insertShape(image,'FilledPolygon',{eye_left,eye_right},...
    'Color',[130 130 130],'Opacity',1);

subplot(1,2,2)
imshow(image);
title 'tasvire nahaii'
```

<div dir="rtl">
تصویر خروجی به صورت زیر است:
</div>

![khorooji](02683.jpg)
