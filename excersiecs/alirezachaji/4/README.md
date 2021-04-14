> # Exercise 4
> Create a 500 by 500 image that includes the bottom right corner of the benchmark images; Separate 100 by 100 squares from each image.
***
>CODE

Main Program
```ruby
close all          % تمام پنجره ها را می بندد
clear all          % سيستم مموري و مقادير تمام متغير ها را پاك ميكند
clc                % كامند ويندو را پاك مي كند
pic=zeros(500,500);  % تصوير خام 500 در 500 پیکسلی مشکل تولید میکند
image_file=dir('*.png'); % را میخواند png از پوشه تمام فابل ها با پسوند
d=0;
for i=1:5         % حلقه تکرار برای آدرس دهی 5 تصویر سطری
    for j=1:5     % حلقه تکرار برای ادرس دهی  5 تصویرستونی
        d=d+1;    % شمارشگر حلقه 
        a=image_cut(image_file(d).name); اسم هر عکس را به تابع برش عکس ارسال میکند
        for ii=1:100  % حلقه برای قرار دادن تصویر 100 پیکسلی بازگشت شده از تابع قبل 
            for jj=1:100 % حلقه برای قرار دادن تصویر 100 پیکسلی بازگشت شده از تابع قبل
                pic(i*100+ii-100,j*100+jj-100)=a(ii,jj);  مقدار پیکسل مورد نظر را از روی تکه تصویر برش خورده مقدار دهی میکند
            end
        end    
    end          
    
end 
pic=uint8(pic);       % تبدیل میکند uint8 تصویر را به مد مورد
imshow(pic)           % تصویر را نشان می دهد
```
****
Image_cut function    % تابع جهت برش تکه 100 در 100 پیکسلی از گوشه پایین سمت راست تصویر
```ruby
function img_out=image_cut(address)   % تعریف تابع
% this function recieve and image address convert it to gray mode and 
%return a 100 x 100 peace of that 
a=imread(address);   % عکس مورد نظر را خوانده و در متغیر میریزد
a=uint8(a);          % تبدیل میکند uint8 تصویر را به مد 
n=size(size(a));     % ابعاد تصویر را بدست می آورد
if (n(2)==3)         % بررسی میکند اگر تصویر رنگی بود
    a=rgb2gray(a);   % آن را به خاکستری تبدیل می کند
end 
pic=zeros(100,100);  تصویری مشکی به ابعاد 100 در 100 ایجاد میکتد
imsize=size(a);    % ابعاد تصویر ورودی را بدست ی آورد
for i=1:100        % حلقه برای حرکت روی پیکسا=ل های تصویر 100 در 100
    for j=1:100    % حلقه برای حرکت روی پیکسا=ل های تصویر 100 در 100
        pic(i,j)=a((imsize(1)-101+i),(imsize(2)-101+j));   % صد پیکسل گوشه پایین را در تصویر جدید میریزد
    end
end
pic=uint8(pic);    % تبدیل میکند uint8 تصویر را به مد مورد
img_out=pic;       % مربعی 100 در 100 پیکسل جدا شده را جهت انتقال به برنامه اصلی داخل متغیر میریزد
```
***
![image](https://github.com/semnan-university-ai/image-processing-class/blob/08ef1711f0eab56bf8be8857a27ffcf699e017f3/excersiecs/alirezachaji/4/Exce04.png)
***
<div dir="rtl">
توضیحات کلی برنامه <br />
  این برنامه تکه ای 100 در 100 پیکسلی از 25 تصویر موجود در تصاویر بنچمارک را جدا کرده و همه انها را در کنار هم قرار داده و یک تصویر جدید به ابعاد 500 در 500 ایجاد میکند...
</div>
