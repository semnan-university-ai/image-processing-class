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
![alt text]()
***
<div dir="rtl">
توضیحات برنامه <br />
   همانطور که در تصویر میبینید طیف رنگ خاکستری از شب به سمت صبح در حال افزایش است و علت آن است که در شب پیکسل های به رنگ مشکی بیشتری داری پ نمودار مان در بازه پایین تراکم بیشتری دارد و هر چه که سمت صبخح میرویم این تراکم کمتر شده 
</div>
