> # Exercise 19

***
>CODE

```ruby
clear all
clc
clear;
> # Exercise 10

***
>CODE

```ruby
clear all
clc
clear;
f={};
x={};
ImagesList = dir('Carachter\*.png');
for i=1:27
 
 f{i}=ImagesList(i).name;
 image=imread(f{i});
 imageList{i}=imresize( imageList{i},[100,100]);
 imageList{i}=255-imageList{i};  
 x{i}=image;
end
 R=randi([1 27],1,4);
 finalImage=cat(2,x{R(1)},x{R(2)},x{R(3)},x{R(4)});
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/19/Screenshot%20(18).png)
***
<div dir="rtl">
توضیحات برنامه <br />
تصاویر  را خوانده و به صورت رندوم در کنار هم قرار میدهد
</div>


