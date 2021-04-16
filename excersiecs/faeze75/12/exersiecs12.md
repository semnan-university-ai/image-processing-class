> # Exercise 10

***
>CODE

```ruby
clc
clear
close all

%تصویر راخوانده و آن را خاکستری میکند و نویز فلفل نمکی را را آن اعمال میکند
a=imread('lena.png');
image=rgb2gray(a);
image_size = size(image);
m1=mean(mean(image));
colors=[0 255];
for i=1:50000                                 %50000 پیکسل از تصویر انتخاب میشنوند برای تبدیل شدن به نویز
    x=randi(image_size(1));                   
    y=randi(image_size(2));                   %x  و y  ها از تصویر به صورت رندوم انتخاب میشوند و مقادیر سیاه یا سفید میگیرند
    image(x,y)=colors(randi(2));
end
m2=mean(mean(image));                       %میانگین  مجموع پیکسلهای تصویر فلفل و نمکی


%دی نویز کردن تصویر  از روش میانگین 
sum = 0;
image_size = size(image);
image_result = zeros(image_size(1, 1), image_size(1, 2));

for i = 1:image_size(1, 1)
   for j= 1:image_size(1, 2)
    image(i, j) = image(i, j);
   end
end

for i = 1:image_size(1, 1)
   for j= 1:image_size(1, 2)
       if(i == 1 && j == 1)
           sum = [ image(i, j) image(i, j+1) image(i+1, j) image(i+1, j+1)];
       elseif(i == image_size(1, 1) && j == 1)
           sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1)];
       elseif(i == 1 && j == image_size(1, 2))
           sum = [ image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
       elseif(i == image_size(1, 1) && j == image_size(1, 2))
           sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j)];
       elseif(i == 1)
           sum = [ image(i, j-1) image(i, j) image(i, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
       elseif(i == image_size(1, 1))
           sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1)];
       elseif(j == 1)
           sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1) image(i+1, j) image(i+1, j+1)];
       elseif(j == image_size(1, 2))
           sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
       else
           sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
       end
       
       image_result(i, j) = uint8(round(mean(sum)));
       sum = 0;
   end
end

% دی نویز کردن تصویر از روش میانه
image_result2 = zeros(image_size(1, 1), image_size(1, 2));

for i = 1:image_size(1, 1)
   for j= 1:image_size(1, 2)
    image(i, j) = image(i, j);
   end
end

for i = 1:image_size(1, 1)
   for j= 1:image_size(1, 2)
       if(i == 1 && j == 1)
           sum = [ image(i, j) image(i, j+1) image(i+1, j) image(i+1, j+1)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(2));
       elseif(i == image_size(1, 1) && j == 1)
           sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(2));
       elseif(i == 1 && j == image_size(1, 2))
           sum = [ image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(2));
       elseif(i == image_size(1, 1) && j == image_size(1, 2))
           sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(2));
       elseif(i == 1)
           sum = [ image(i, j-1) image(i, j) image(i, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(3));
       elseif(i == image_size(1, 1))
           sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(3));
       elseif(j == 1)
           sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1) image(i+1, j) image(i+1, j+1)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(3));
       elseif(j == image_size(1, 2))
           sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(3));
       else
           sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
           sum = sort(sum);
           image_result2(i, j) = uint8(sum(5));
       end
       
     
       sum = 0;
   end
end
m3=mean(mean(image_result));
figure, imshow(image);
figure, imshow(uint8(image_result));
m4 = mean(mean(image_result2));
figure, imshow(uint8(image_result2));
% نمایش خروجی به صورت جدول
A = [m1 m2 m3 m4];
T = array2table(A,...
    'VariableNames',{'main_image','salt','mean','middle'})

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/12/Screenshot%20(32).png)
***
<div dir="rtl">
توضیحات برنامه <br />
یک تصویر را خوانده و نویز فلفل و نمکی بر روی آن اعمال میکنیم و بعد با روش میانیگن گیری و میانه سعی بر دی نویز کردن آن داریم و در نهایت میبینم که روش میانه روش بهتری برای دی نویز کردن فلفل و نمکی است 
</div>
