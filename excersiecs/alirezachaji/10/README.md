
> # Exercise 10
> Draw a Captcha image using some randon numbers;The image is binary and has white numbers and a black background. 
***
>CODE

Main Program
```ruby
 
close all                                        % تمام پنجره ها را می بندد
clear all                                        % سيستم مموري و مقادير تمام متغير ها را پاك ميكند
clc                                              % كامند ويندو را پاك مي كند
pic=zeros(100,400);                              % تصویر خامی با ابعاد 100 در 400 پیکسل ایجاد میکند
for i=1:4                                        % حلقه برای 4 عدد رندم
   d=randi(10);                                  % عددی رندم بین 1 تا 10 ایجاد میکند
   add="images\numbers\"+int2str(d-1)+".png";    % آدرس تصویر هر عدد را با توجه به عدد رندم ایجاد شده تهیه میکند
   a=imread(add);                                % عدد مورد نظر را در متغیر میریزد
   for r=1:100                                   % حلقه برای حرکت سطری روی پیکسل های تصویر عدد رندم
       for k=1:100                               % حلقه برای حرکت ستونی روی پیکسل های تصویر عدد رندم 
           c=(i-1)*100+k;                        % محل شروع رسم تصویر عدد یک تا چهارم را مشخص میکند
           pic(r,c)=(255-a(r,k));                % پیکسل های عدد رندم را در تصیر اصلی در محل مناسب کپی میکند
       end
   end    
end 
figure;                                          % فیگور جدید ایجاد میکند
pic=im2bw(pic);                                  % تصویر را به حالت سیاه و سفید می برد
imshow(pic)                                      % تصویر نهایی را نشان می دهد
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/f252686eab76eab3b8a80fa18ed263105af2742a/excersiecs/alirezachaji/10/Exce10.png)
***
<div dir="rtl">
توضیحات کلی برنامه <br />
 برای این برنامه تعداد 10 تصویر مربوط به 10 رقم 0 تا 9 در نرم افزار تقاشی ویندوز ایجاد شده که متناسب با عدد رندم تولید شده عکس مربوطه فراخوانی شده و در تصویر اصلی با توجه به مکان آن کپی می شود.
</div>
