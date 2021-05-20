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
  3. در یک حلقه 15 تایی تابع مربوط به ایجاد کپچا را فراخوانی کرده و خروجی در متغییری قرار  می گیرد. و در تهایت تصویر تولید شده در فایل در مسیر دلخواه ذخیره می گردد.
</div>

````
for i=1:150
    captcha_image=creatCAP( numbers,5,500,200);
    imwrite(captcha_image,['c:\captcha\',num2str(i),'.png']);
end
````

