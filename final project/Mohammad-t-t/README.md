# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : Mohammad Taher Taheranpour
* github id : Mohammad-t-t
* Email : mttmtt@gmail.com
* Type : majazi

## پاسخ تمرین نهایی :
### بهینه سازی برنامه نوشته شده درکلاس و مقایسه 150 عدد کپچا تولید شده

````
clc; close all; clear;

for i=1:10
    numbers(:,:,i) = dlmread([cd filesep 'text\',int2str(i-1),'.txt']);
end
numbers = uint8(numbers);

for i=1:150
    captcha_image=creatCAP( numbers,5,500,200);
    imwrite(captcha_image,['c:\captcha\',num2str(i),'.png']);
end
````

<div dir="rtl">
1. در مرحله اول در يك حلقه 10 عدد فايل متني مربوط به اعداد رااز مسير مربوطه خوانده  و  در يك ليست قرار مي دهيم.
</div>

````
for i=1:10
    numbers(:,:,i) = dlmread([cd filesep 'text\',int2str(i-1),'.txt']);
end
````
<div dir="rtl">
2. نوع داده هاي ليست را به unit8 تغییر می دهیم.
</div>

````
numbers = uint8(numbers);
````

<div dir="rtl">
  3. در یک حلقه 150 تایی تابع مربوط به ایجاد کپچا را فراخوانی کرده و خروجی در متغییری قرار  می گیرد. و در تهایت تصویر تولید شده در فایل در مسیر دلخواه ذخیره می گردد.
</div>

````
for i=1:150
    captcha_image=creatCAP( numbers,5,500,200);
    imwrite(captcha_image,['c:\captcha\',num2str(i),'.png']);
end
````
### توضیح تابع captcha_image=creatCAP

````
function [ captcha_image ] = creatCAP( numbers,numbers_count,width,height)

numbers = uint8(numbers);
for i=1:10
temp=moj(numbers,i);
    numbers(:,:,i)=temp(:,:);
end
captcha_numbers = randi([0 9],[1  numbers_count]);
captcha_image = zeros(size(numbers(:,1,1)));

for i = 1 : numbers_count
	captcha_image = [ captcha_image numbers(:,:,captcha_numbers(1,i)+1) ];
end

captcha_image = imresize(captcha_image, [height width]);
captcha_image=im2bw(captcha_image,0.3);
end


````

<div dir="rtl">
1. تابع داری 4 ورودی می باشد:
    1- لیست شماره های خوانده شده
    2- تعداد ارقام مورد نظر جهت درجدر کپچا
    3- ارتفاع فایل خروجی
    4- طول فایل خروجی
</div>

````
function [ captcha_image ] = creatCAP( numbers,numbers_count,width,height)
````
<div dir="rtl">
2. در یک جلقه 10 تایی کلیه تصاویر در یک تابع دیگر که تغییر شمل حروف را انجام میدهد فراخوانی شده وجایگزین تصویر قبلی می شود.
</div>

````
for i=1:10
temp=moj(numbers,i);
    numbers(:,:,i)=temp(:,:);
end
````

<div dir="rtl">
  3. به تعداد عدد تصادفی بین 0 تا 9 ایجاد شده و در یک متغییر قرار می گیرد
</div>

````
captcha_numbers = randi([0 9],[1  numbers_count]);
````
<div dir="rtl">
  4. یک تصویر به عرض 1 کاراکتر و برابر با مشخصات تصاویر موجود ایجاد میکنیم
</div>

````
captcha_image = zeros(size(numbers(:,1,1)));
````
<div dir="rtl">
  5. در يك حلقه به تعداد اعداد ورودي تصاوير انتخاب شده در كنار يكديگر قرار مي گيرند
</div>

````
for i = 1 : numbers_count
	captcha_image = [ captcha_image numbers(:,:,captcha_numbers(1,i)+1) ];
end
````
<div dir="rtl">
  6. تصویر ایجاد شده را به اندازه های ورودی تابع تغییر می دهیم
</div>

````
captcha_image = imresize(captcha_image, [height width]);
````
<div dir="rtl">
  7. تصویر نهایی را به سیاه و سفید تبدیل می کنیم
</div>

````
captcha_image=im2bw(captcha_image,0.3);
````
