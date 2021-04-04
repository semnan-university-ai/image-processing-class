


> # Exercise 1
>  برنامه ای بنویسید که با دریافت یک طول و عرض به عنوان مقدار طول و عرض تصویر یک صفحه ی شطرنج ایجاد کنید.
***
>CODE

```ruby
 n  = input("pleas enter a number as the chess dimension more than 8 : ");
while(n <8)
  n  = input("pleas enter a number as the chess dimension more than 8 : ");
end
areaOfpixel=floor(n/8);

chess =zeros(8,8);
for i=1:8
    for j=1:2:8
        if mod(i,2) == 0
           chess(i,j)=255;
           chess(i,j+1)=0;
        else
           chess(i,j)=0;
           chess(i,j+1)=255;
        end
            
    end
end

orginalSize = repelem(chess,areaOfpixel,areaOfpixel);
imshow(orginalSize)
```
![image](https://user-images.githubusercontent.com/48456571/113267661-dac14080-92eb-11eb-8117-01bf5d56e0c5.png)
***
<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.در ابتدای برنامه ابعاد صفحه شطرنج از کاربر دریافت می شود. به جهت اینکه شطرنج 8 خانه دارد چک میشود عدد ورودی بزرگتر از 8 باشد<br />
<b>2</b>.سپس ما یک شطرنچ کوچک 8در 8 درست میکنید با استفاده از دستورات فوق<br />
<b>3</b>. اما به دلیل ایتکه 8*8 ابعد کوچکی است. ابعاد مورد نظر را از  کاربر دریافت میکنیم و بر 8 تقسیم می کنیم تا سایز بزرگنمایی مشخص شود.<br />
<b>4</b>.سپس با استفاده از تابع repelem 
صفحه شرط را به انذازه سایزی که میخواهیم بزرگ میکنیم(طول و عرض ماتریس را گسترده تر و یا به عبارتی هر ستون و سطر را چند بار تکرار می کنیم)
    
</div>
