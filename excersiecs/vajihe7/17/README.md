> # Exercise 17
>آسمان تصویر png.mountain را سیاه رنگ کنید.
***
>CODE

Main Program
```ruby
clear;
close all;
clc;
image1 = imread('mountain.png');
figure;
imshow(image1)
image2=image1;
Color=200;
for i=1:639
    for j=1 : 150
        if image2(j+1,i)<Color;
            break;
        end
        if image2(j,i)>Color;
            image2(j,i)=0;
        end
        
    end
end
figure;
imshow(image2);
```
****
![result](https://user-images.githubusercontent.com/79658260/116663438-588c7080-a9ac-11eb-8340-9017dcbd8e3f.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.محدوده رنگ را با colorتعیین میکنیم <br />
<b>3</b>.عرض تصویر را در حلقه مشخص میکنیم و شرط را تعیین میکنیک که اگر کمتر ازآن محدوده بود که هیچ وگرنه به رمگ سیاه درآید .<br />
<b>4</b>.در خروجی نمایش میدهد
    
</div>

