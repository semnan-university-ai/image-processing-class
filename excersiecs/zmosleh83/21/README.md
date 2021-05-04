<div dir="rtl">

#### 21تمرین <br />



### کد:
</div>

```matlab
clc;clear;close all;

img=imread("watch.png");
imgsc=img;
[xs,ys,zs]=size(img);
for i= 1:xs
    for j =1:ys
        for k=1:zs
            imgsc(i,j,k)=fix(img(i,j,k)/51)*51;
        end
    end
end
imshow(imgsc);
```

<div dir="rtl">

---
#### برسی کد:

1. <br/>
- لود تصویر رنگی در متغیر img <br/>
- تبدیل آن به تصویر safe color <br/>
</div>

```matlab
img=imread("watch.png");
imgsc=img;
[xs,ys,zs]=size(img);
```
<div dir="rtl">

---
2. <br/>
-safe color ترکیب رنگ حالت <br />
</div>

```matlab
imgsc(i,j,k)=fix(img(i,j,k)/51)*51;```

<div dir="rtl">

---
3. <br/>
- حلقه تو در تو جهت پیمایش پیکسلهای  تصویر <br/>
</div>

```matlab
for i= 1:xs
    for j =1:ys
        for k=1:zs
            imgsc(i,j,k)=fix(img(i,j,k)/51)*51;
        end
    end
end
```
<div dir="rtl">

---
4-<br/>
- نمایش تصویر های خروجی 
</div>

```matlab
imshow(imgsc);
```
<div dir="rtl">
با سپاس از آقای احسان مجیدی بابت توضیح کامل کد 