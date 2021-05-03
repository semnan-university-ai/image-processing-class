
### question Info 
23 کانبدون استفاده از توابع آماده ی متلب هیستوگرام هر یک از کانال های رنگی یکی از تصاویر را به صورت جداگانه محاسبه کنید. کدهای هیستوگرام را تبدیل به یک تابع در فایل جداگانه کنید و برای هر سه کانال رنگی آن را فراخوانی کنید..

###### 
open the code ex23.m with mathlab press **run** button :rocket: 
<div dir = "rtl">
تابع hister
</div>

```matlab
function [canal]=hister(img)
[X,Y]=size(img);
canal=zeros(1,256);
for i=1:X
 for j=1:Y
    z=img(i,j);
    canal(z+1)=canal(z+1)+1;
 end
end

```

<div dir = "rtl">
فراخوانی تابع برای هرکانال
</div>

```matlab
Red = img(:, :, 1);Green = img(:, :, 2);Blue = img(:, :, 3);
Redhist=hister(Red);
Greenhist=hister(Green);
Bluehist=hister(Blue);
```




![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/23/23.png)

