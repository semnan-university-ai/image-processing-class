># Exercise 4

***
>CODE

```ruby
clc
close all
clear

ImagesList = dir('bench mark\*.png');
name={};
imgcrop={};
new={};
for i=1:15
   name{i}=ImagesList(i).name;
   image=imread(name{i});
   [y,x]=size(image);
    ny=y-100;
    x=x/3;
    Imgcrop = imcrop(image,[1 ny 100 100]);
    imgcrop{i}=Imgcrop;
end
 for i=1:5
    R=randi([1 15],1,5);
    image=[imgcrop{R(1)} imgcrop{R(2)} imgcrop{R(3)} imgcrop{R(4)} imgcrop{R(5)}];
    new{i}=image;
 end

finalImage=cat(1,new{1},new{2},new{3},new{4},new{5});
imshow(finalImage)


```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/2/scatter.png)
***
<div dir="rtl">
توضیحات برنامه <br />
بعد از خواندن تصاویر  تمامی تصاویر را در ابعاد 100*100 از مختصات تعیین شده(گوشه سمت راست) برش میدهیم و سپس به صورت رندوم تصویر25 از بین تصاویر برش داده شده انتخاب میشوند برای ساخت یک تصویربا سایز 500*500.
</div>

