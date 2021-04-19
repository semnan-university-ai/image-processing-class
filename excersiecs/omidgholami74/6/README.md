
> # Exercise 4
>یک تصویر مربعی 500*500 ایجاد کنید که شامل بخش گوشه ی سمت راست و پایین تصاویر بنچ مارک ها باشد؛ از هر تصویر یک مربع 100*100 جدا کنید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

image =zeros(255,500);
image =uint8(image);
imageSize=size(image);

for i=1:imageSize(1,1)
    for j=1:imageSize(1,2)
        image(i,j)=i-1;
    end
end
imshow(image);
```
****

![image](https://user-images.githubusercontent.com/48456571/113287825-567ab780-9303-11eb-98f5-6da15f2bbb76.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا یک ماتریس صفر ایجاد میکنیم<br />
<b>2</b>نوه ماتریس از double به uint8 تغییر میدهیم <br />
<b>3</b>. با استفاده از حلقه ها مقدار رنگ را از سفید تا سیاه تغییر می دهیم.<br />
    
</div>
