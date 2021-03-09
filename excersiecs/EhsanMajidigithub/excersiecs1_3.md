<div dir="rtl" >
  
## سوال 3:

**برنامه ای بنویسید که بدون استفاده از توابع متلب تصاویر benchmark را به حالت خاکستری ببرد.؟**

</div>

```
clear all;
close all;
clc;

img = imread('pool.png');

i=size(img);

if i > 1
  img = img(:, :, 2); 
end
imshow(img);
 ```
 
 ![ image_1](../benchmark/pool.png)
 
 **==========================================**


![image](https://user-images.githubusercontent.com/79828266/110442602-3d9a3000-80d0-11eb-97da-9a9191f81495.png)
