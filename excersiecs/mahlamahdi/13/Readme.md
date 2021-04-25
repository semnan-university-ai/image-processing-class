<div dir = "rtl">
  <h1> تمرین سیزدهم</h1>

</div>


````
clc;
clear;
close all;

````
<div dir = "rtl">
  خواندن عکس</br>
  تبدیل عکس به خاکستری</br>
  نمایش عکس و بدست آوردن اندازه عکس

</div>

`````
image=imread('lena.png');
image=rgb2gray(image);
imshow( image);
[m,n] = size(image);

`````

<div dir = "rtl">
  تبدیل عکس به نگاتیو

</div>

`````
for i =1:m
    for j=1:n
        negative_pic(i,j) = 255- image(i,j);
    end
end

`````
<div dir = "rtl">
   و نمایش تصاویر نویزی با دستور subplotایجاد ده نویز مختلف روی تصویر و بدست آوردن میانگین پیکسل ها

</div>
`````
p= 0.1;
for i=1:10
    img_noise= imnoise(negative_pic, 'salt & pepper', p);
   
    subplot(2,5,i),imshow(img_noise);
     p = p+0.1;
     ave=mean(img_noise);
    b(i)=round(mean(ave));

end
`````  
<div dir = "rtl">
ایجاد جدول برای نمایش میانگین پیکسل ها
</div>

````
Noise = {'noise0.1='; 'noise0.2=';'noise0.3=';'noise0.4=';'noise0.5=';
              'noise0.6=';'noise0.7=';'noise0.8=';'noise0.9=';'noise1='};
Ave = [b(1);b(2);b(3);b(4);b(5);b(6);b(7);b(8);b(9);b(10)];

T = table(Noise,Ave);
disp(T)

````
