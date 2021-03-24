># Exercise 5

***
>CODE

```ruby
clc
close all
clear

image = imread('parvanehh.jpg');

reverseImage = flipdim(image ,2);         
final=[image reverseImage];
imshow(image)
figure, imshow(reverseImage)
figure, imshow(final)



```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/5/Screenshot%20(8).png)
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/5/Screenshot%20(7).png)
***
<div dir="rtl">
توضیحات برنامه <br />
ابندا تصویر مورد نظر را خوانده و سپس آن را معکوس میکند و در آخر دو تصویر را به هم می چسباند
</div>

