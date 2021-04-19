> # Exercise 1
>برنامه ای بنویسید که با دریافت یک طول و عرض به عنوان مقدار طول و عرض تصویر یک صفحه ی 
شطرنج ایجاد کنید
***
>CODE

Main Program
```ruby
close all
clear
clc
axis([1 13  1 13]);
x=1
for i=3:1:10
    for j=3:1:10
        if isequal(x,0)
            rectangle('position',[j i 1 1],'facecolor',[.800  .800  .800])
            x=1;
        else
            rectangle('position',[j i 1 1],'facecolor',[0 0 0])
            x=0;
        end
    end
    if isequal(x,0)
        x=1;
    else 
        x=0;
    end
end
```
****
![result](https://user-images.githubusercontent.com/79658260/114679752-b28d0500-9d21-11eb-85e3-09cf698ef9d9.png)





<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدای برنامه محدوده محور های مختصات شکل را وارد میکنیم<br />
<b>2</b>.دو حلقه تعریف میکنیم که با دریافت طول و عرض یک صفحه شطرنجی ایجا میکند  <br />
<b>3</b>.یک تابع تعریف می کنیم که برابر بودن دو ماتریس را چک میکند و شرط حلقه اجرا می شود.<br />

</div>

