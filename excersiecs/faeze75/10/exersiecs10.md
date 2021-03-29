> # Exercise 10

***
>CODE

```ruby
clear all
clc
clear;
f={};
x={};
ImagesList = dir('number\*.png');
for i=1:9
 f{i}=ImagesList(i).name;
 image=imread(f{i});
 x{i}=image;
end
 R=randi([0 9],1,4);
 finalImage=cat(2,x{R(1)},x{R(2)},x{R(3)},x{R(4)});
```
![alt text]()
***
<div dir="rtl">
توضیحات برنامه <br />
تصاویر 0-9  را خوانده و به صورت رندوم در کنار هم قرار میدهد
</div>
