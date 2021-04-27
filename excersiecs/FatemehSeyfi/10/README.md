<div dir ="rtl">

تمرین 10:<br/>
        بدون استفاده از دستوران متلب یک کپچای تصویری را بکشید؛ اعداد را با تابع عدد تصادفی ایجاد کنید و سپس با توجه به اعداد بدست آمده برای هر یک در تصویر پیکسل های مورد نظر را رسم کنید؛ تصویر باینری باشد و اعداد رنگ سفید و پیش زمینه رنگ مشکی داشته باشد. <br/>

</div>

```
clc;
close all;
clear;
```
<div dir ="rtl">
این تکه کد تصویری به ابعاد50*200 ایجاد می کند.  <br/>
</div>

```
image=zeros(50,200);
```
<div dir ="rtl">
این تکه کد در حلقه اول  4  عدد تصادفی در بین 10 عدد 0 تا 9 تولید می کند ودر حلقه بعدی   m و k آدرس تصویرمان ایجاد می گردد.. <br/>
</div>

```
for i=1:4
  j=randi(10);
   inc="numbers\"+int2str(j-1)+".png";
   b=imread(inc);
   for m=1:100
       for k=1:100
           c=(i-1)*100+k;
           image(m,c)=(255-b(m,k));
       end
   end    
end 

```

<div dir ="rtl">
با استفاده از دستور im2bw تصویر را باینری می کنیم.<br/>
</div>

```
figure;
image=im2bw(image);
```
<div dir ="rtl">
 نمایش خروجی  <br/>
</div>

```
figure

imshow(image)
```

![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/10/q10.png)
