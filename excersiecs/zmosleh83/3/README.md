<div dir="rtl">

#### تمرین 3
#### برنامه ای بنویسید که بدون استفاده از توابع متلب تصاویر benchmark را به حالت خاکستری ببرد.  <br />



### کد:
</div>

```matlab
close all
clear all
clc
image = imread("C:\SemnanClass\9902\TA\Benchmark\airplane.png");
rgb = rand(200,200,3);
% Convert it 
gray = 0.2989 * rgb(:,:,1) + 0.5870 * rgb(:,:,2) + 0.1140 * rgb(:,:,3);
imshow(image); 

imshow(gray); 
```
---

<div dir="rtl">

#### برسی کد:
یادگيری و آموزش از سايت : 
https://www.mathworks.com/<br />
</div>


<div dir="rtl">
