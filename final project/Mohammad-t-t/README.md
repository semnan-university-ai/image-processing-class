# image-processing-class

image processing class - 992

## Information

- ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
- ##### TA : Amir Shokri - [Contact](mailto:amirsh.nll@gmail.com)

### Student Info :

- Full name : Mohammad Taher Taheranpour
- github id : Mohammad-t-t

## پاسخ تمرین نهایی :

### بهینه سازی برنامه نوشته شده درکلاس و مقایسه 150 عدد کپچا تولید شده

### در مجموع مقایسه انجام شده از 150 کپچا تولید شده تنها 5 عدد به صورت کامل توسط متلب شناسایی شده و 97 درصد قابل شناسایی نبوده است.

```
clc; close all; clear;

for i=1:10
    numbers(:,:,i) = dlmread([cd filesep 'text\',int2str(i-1),'.txt']);
end
numbers = uint8(numbers);

for i=1:150
    captcha_image=creatCAP( numbers,5,500,200);
    imwrite(captcha_image,['c:\captcha\',num2str(i),'.png']);
end
```

<div dir="rtl">
1. در مرحله اول در يك حلقه 10 عدد فايل متني مربوط به اعداد رااز مسير مربوطه خوانده  و  در يك ليست قرار مي دهيم.
</div>

```
for i=1:10
    numbers(:,:,i) = dlmread([cd filesep 'text\',int2str(i-1),'.txt']);
end
```

<div dir="rtl">
2. نوع داده هاي ليست را به unit8 تغییر می دهیم.
</div>

```
numbers = uint8(numbers);
```

<div dir="rtl">
  3. در یک حلقه 150 تایی تابع مربوط به ایجاد کپچا را فراخوانی کرده و خروجی در متغییری قرار  می گیرد. و در تهایت تصویر تولید شده در فایل در مسیر دلخواه ذخیره می گردد.
</div>

```
for i=1:150
    captcha_image=creatCAP( numbers,5,500,200);
    imwrite(captcha_image,['c:\captcha\',num2str(i),'.png']);
end
```

### توضیح تابع creatCAP

```
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


```

<div dir="rtl">
1. تابع داری 4 ورودی می باشد:
    1- لیست شماره های خوانده شده
    2- تعداد ارقام مورد نظر جهت درجدر کپچا
    3- ارتفاع فایل خروجی
    4- طول فایل خروجی
</div>

```
function [ captcha_image ] = creatCAP( numbers,numbers_count,width,height)
```

<div dir="rtl">
2. در یک حلقه 10 تایی کلیه تصاویر در یک تابع دیگر که تغییر شمل حروف را انجام میدهد فراخوانی شده وجایگزین تصویر قبلی می شود.
</div>

```
for i=1:10
temp=moj(numbers,i);
    numbers(:,:,i)=temp(:,:);
end
```

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

### توضیح تابع moj

```
function [ t1 ] = moj( numbers,num )

t1=numbers(:,:,1);
t1(:,:)=0;
[hi wi]=size(t1);
d=fix(hi/2);
t2=t1;

row=randi([1 3]);

if row ==1
for i=1:20
t2(:,i+5)=numbers(:,i,num);
end

    x=1;
    for j=5 : d
        for i=1:(hi)
           if i+x> 25
               break
           end

        t1(j,i)=t2(j,i+x);
        end
        x=x+1;
    end
    for j=d+1:hi-5
        for i=1:(hi)
            if i+x> 25
                break
            end

            t1(j,i)=t2(j,i+x);
        end
        x=x-1;
    end

elseif row==2


for i=1:20
t2(:,i)=numbers(:,i+5,num);
end
    x=1;
    for j=5 : d
        for i=1:(hi)
           if i+x> 25
               break
           end

        t1(j,i+x)=t2(j,i);
        end
        x=x+1;
    end
    for j=d+1:hi-5
        for i=1:(hi)
            if i+x> 25
                break
            end

            t1(j,i+x)=t2(j,i);
        end
        x=x-1;
    end
else
    t1(:,:)=numbers(:,:,num);
end
end
```

<div dir="rtl">
1. تابع داری 2 ورودی می باشد:
    1- لیست شماره های خوانده شده
    2- شماره عدد موردنظر جهت تغییر
همچنینی تابع داری یک خروجی تصویر تغییر کرده می باشد
</div>

```
function [ t1 ] = moj( numbers,num )
```

<div dir="rtl">
2. در توضیح کلی تابع، تابع با ایحاد یک عدد تصادفی بین 1تا 3اقدام به تغییر شکل اعداد می دهد.
	1- درصورتی که عدد 1  باشد اعداد به سمت چپ موج پیدا می کند
	2- درصورتی که عدد 2  باشد اعداد به سمت راست موج پیدا می کند
	3- در صورتی که عدد 3 باشد تغییری ایجاد نمی شود

</div>
