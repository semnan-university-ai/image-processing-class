## تمرین 10
<div dir='rtl'>
  ابتدا مسیر ذخیره تصاویر را داخل path قرار می دهیم و لیست captcha .را تعریف می کنیم
</div>
</br>

```
path = dir('Numbers/*.png');
captcha = [];

```
<div dir='rtl'>
  میخواهیم بک کپچا با 4 عدد را ایجاد کنیم برای این کار یه تکرار 4 تایی را انجام میدهیم که داخل آن ابتدا یک عدد تصادفی بین 1 تا 9 ایجاد میکنیم سپس نام  تصویر متناظر با عدد تصادفی را استخراج میکنیم و به انتهای مسیر میچسبانیم و به وسیله ی imread  تصویر را میخوانیم و با دستور imbineraize آن را باینری میکنیم و سایز تصویر را برای این که همه ی تصاویر سایز برابر داشته باشند تغییر میدهیم در انتها نیز بر اساس مرحله ی تکرار با کمک دستورات  if و استفاده از cat عکس را به captcha که تصویر نهایی است اضافه میکنیم
</div>
</br>

```
for i=1:4
   random = randi(9);
   name = path(random).name;
   f = strcat('Numbers/',name);
   im = imread(f);
   im = imbinarize(im,0.00001);
   im = imresize(im,[128,128]);
   
   if(i==1)
       captcha1 = im;
       captcha =cat(2,captcha,captcha1);
   elseif(i==2)
       captcha2 = im;
       captcha =cat(2,captcha,captcha2);
   elseif(i==3)
       captcha3 = im;
       captcha =cat(2,captcha,captcha3);
   elseif(i==4)
       captcha4 = im;
       captcha =cat(2,captcha,captcha4);
   end
   
end
imshow(captcha);
```
<div dir='rtl'>
  خروجی کد :
</div>
</br>

![](p10.png)
