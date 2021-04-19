
> # تمرین 10
>بدون استفاده از دستوران متلب یک کپچای تصویری را بکشید؛ اعداد را با تابع عدد تصادفی ایجاد کنید و سپس با توجه به اعداد بدست آمده برای هر یک در تصویر پیکسل های مورد نظر را رسم کنید؛ تصویر باینری باشد و اعداد رنگ سفید و پیش زمینه رنگ مشکی داشته باشد. .
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;
image=zeros(50,200);
for i=1:4
  j=randi(10);
   inc="numbers\"+int2str(j-1)+".png";
   b=imread(inc);
   for m=1:100
       for k=1:100
           c=(i-1)*100+k;
           image(m,c)=(255-b(m,k));
       end
   end    
end 
figure;
image=im2bw(image);
imshow(image)
```
****
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/10/q10.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.ایجاد تصویر به ابعاد 50 در 200<br />
<b>2</b>.  در بین  10عدد 0 تا 9تولید 4 عدد تصافی  <br />
<b>3</b>. ایجاد آدرس آن تصویر از روی شمارنده حلقه.<br />
<b>4</b>. با استفاده از دستور im2bw تصویر را باینری می کنیم

    
</div>
