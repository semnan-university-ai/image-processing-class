> # Exercise 9
>برنامه ای بنویسید که یک طول و عرض را مشخص کرده و سپس یک تصویر را crop کند.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

image= e9_cut('airplane.png',200,350,160,250);
imshow(image);

```
****
crop function
```ruby
function imageOut = e9_cut(name,startPixelWidth,endPixelWidth,startPixelHeight,endPixelHeight)
%E9_CUT Summary of this function goes here
%   Detailed explanation goes here
image=imread(strcat('benchmark/',name));
        n=size(size(image));
        if n(2) ==3
            image=rgb2gray(image);
        end
        image_cuted =image(startPixelWidth+1:endPixelWidth,startPixelHeight+1:endPixelHeight);
        imageOut=image_cuted;
end


```
***
![image](https://user-images.githubusercontent.com/48456571/113303059-ef1a3300-9315-11eb-8ca0-f70eba690159.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>

