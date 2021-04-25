
> # Exercise 16
>چشم های تصویر zelda.png را حذف کنید.
***
>CODE

```ruby
clc;
close all;
clear all;

image =imread('benchmark/zelda.png'); % بارگزاری عکس
figure; % باز شدن یک پنجره مخصوص شکل جدید
imshow(image); %  نمایش عکس

eye_left=[213 275 235 279 261 275 236 262];% مختصات چشم سمت چپ
eye_right=[304 270 326 253 352 266 330 280];% مختصات چشم سمت راست
colorCode=140;
image = insertShape(image,'FilledPolygon',{eye_left,eye_right},...
    'Color',[169 169 169],'Opacity',1); % اعمال شکل بروی نقاط چشم برای حذف آن

figure;imshow(image);
```
****
![image](https://user-images.githubusercontent.com/48456571/113308920-e62c6000-931b-11eb-9a4d-b0a528f45c66.png)
