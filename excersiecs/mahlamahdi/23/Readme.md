<div dir = "rtl">
<h1> تمرین بیست و سوم  </h1>

<br/>
</div>

````
clc
close all
clear
````
<div dir = "rtl">
خواندن تصویر و بدست آوردن اندازه تصویر
</div>

````
image = imread("fruits.png");
image2 = image;
[m, n ,r] = size(image);
````

<div dir = "rtl">
  به ازای هر کدام کانل ها تابع compute_hist که برای محاسبه هیستوگرام هر کانال است فراخوانده می شود.
 </div>


````
for p=1:r
  hist=compute_hist(image(:,:,p));
  bar(hist);
  subplot(2,3,p); bar(hist); 
end

````

<div dir = "rtl">
نمایش خروجی
</div>

````
  subplot(1,2,1), imshow(pic);
  subplot(1,2,2), imshow(image);
````

<div dir = "rtl">
  <h2> بدست آوردن هیستوگرام</h2>
  </div>
  
  <div dir = "rtl">
  بدست  آوردن هیستوگرام هر کانال 
  </br>
   با تشکر از جناب شکری برای آموزش مفید هیستوگرام
  </div>
  
  `````
  
 function [pixel_histogram] =  compute_hist(image)
[m ,n] = size(image);
pixel_histogram = zeros(1, 256);
for i = 1 : m
    for j = 1 : n
        pixel_histogram(1, image(i,j) + 1) = pixel_histogram(1, image(i,j) + 1) + 1;
        % pixel_histogram(1, image(i,j) + 1) += 1;
    end
end
end

`````

![خروجی](assets/result.jpg)
