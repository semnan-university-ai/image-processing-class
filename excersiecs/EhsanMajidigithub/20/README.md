<div dir="rtl">

#### 20 تمرین <br />
#### با دستورات ساده ی متلب سعی کنید اسم خودتان را با کلمات فارسی در یک تصویر ایجاد کنید. استفاده از توابع آماده ی رسم کاراکترها در این تمرین مجاز نیست.... <br />



### کد:
</div>

```matlab
clc;
clear;
close all;


i_1=imread('carec1.png');
i_2=imread('carec2.png');
i_3=imread('carec3.png');
i_4=imread('carec4.png');
i_5=imread('carec5.png');

imgList={ i_1 i_2 i_3 i_4 i_5 };

for i=1:5
     imgList{i}=imresize( imgList{i},[400,400]);
end
WriteText=cat(2,imgList{1},imgList{2},imgList{3},imgList{4},imgList{5});
 imshow(WriteText)
```

<div dir="rtl">

---
#### برسی کد:

1. <br/>
- لود حروف فارسی  در متغیر img <br/>
</div>

```matlab
i_1=imread('carec1.png');
i_2=imread('carec2.png');
i_3=imread('carec3.png');
i_4=imread('carec4.png');
i_5=imread('carec5.png');

```
<div dir="rtl">

---
2. <br/>
-لیست کردن حروف<br />
</div>

```matlab
imgList={ i_1 i_2 i_3 i_4 i_5 };

<div dir="rtl">

---
3. <br/>
- تغییرسایز  <br/>
</div>

```matlab
for i=1:5
     imgList{i}=imresize( imgList{i},[400,400]);
end
```
<div dir="rtl">

---
4-<br/>
- نمایش تصویر های خروجی 
</div>

```matlab
WriteText=cat(2,imgList{1},imgList{2},imgList{3},imgList{4},imgList{5});
 imshow(WriteText)
```
<div dir="rtl">
تصویر خروجی:<br />
</div>

![Image of Yaktocat]()


