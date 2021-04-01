# Exercise 14

***
>CODE

```ruby
% ImagesList = dir('city\*.png');
%  for i=1:12
%       name{i}=ImagesList(i).name;
%       name{i}=imread(name{i});
%       name{i}=rgb2gray(name{i});
%       x=imhist(name{i});
%       subplot(4,3,i)
%  end

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/14/Screenshot%20(27).png)
***
<div dir="rtl">
توضیحات برنامه <br />
   همانطور که در تصویر می بینید طیف رنگ خاکستری از شب به سمت صبح در حال افزایش است و علت آن است که در شب تعداد پیکسل های به رنگ مشکی بیشتری داریم پس نمودار مان در بازه پایین تراکم بیشتری دارد و هر چه که سمت صبح میرویم این تراکم کمتر شده 
</div>
