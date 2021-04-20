
> # Exercise 16
>چشم های تصویر zelda.png را حذف کنید.
***
>CODE

```ruby
clc;
close all;
clear all;

image =imread('benchmark/zelda.png');
figure;
imshow(image);

eye_left=[213 275 235 279 261 275 236 262];
eye_right=[304 270 326 253 352 266 330 280];
colorCode=140;
image = insertShape(image,'FilledPolygon',{eye_left,eye_right},...
    'Color',[169 169 169],'Opacity',1);

figure;imshow(image);
```
****
![image](https://user-images.githubusercontent.com/48456571/113308920-e62c6000-931b-11eb-9a4d-b0a528f45c66.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>
