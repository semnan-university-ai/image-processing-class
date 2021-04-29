<div dir= "rtl">
  تمرین شانزدهم
  </div>
  
````    
clc;
clear;
close all;

````

<div dir= "rtl">
  خواندن تصویر و محاسبه مکان چشم ها و قرار دادن رنگ زمینه در مکان چشم ها
  </div>

````
a=imread('zelda.png');
b=a;

for i= 250:290
    for j=300:355
        b(i,j) = 140;
    end
end
for i= 250:290
    for j=200:259
        b(i,j) = 140;
    end
end

`````

<div dir= "rtl">
  نمایش خروجی
  </div>
  
  `````
subplot(1,2,1), imshow(a);
subplot(1,2,2), imshow(b);
  
`````

![خروجی](assert/result.png)
  
