> # Exercise 16
>چشم های تصویر png.zelda را حذف کنید
***
>CODE

Main Program
```ruby
close all;
clear all;
clc;
image=imread("zelda.png");
figure;
imshow(image)
for i=250:285 %hazf chap
     for j=202:260
        image(i,j)=image(i,j+180);
     end
 
  end
 for i=250:285 %hazf rast
     for j=300:355
        image(i,j)=image(i+35,j);
     end
 
 end
 figure;
 imshow(image)

```
****
![result](https://user-images.githubusercontent.com/79658260/116662605-3b0ad700-a9ab-11eb-8a8e-ed3b00a090fb.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.در خروجی عکس اصلی نمایش داده میشود. <br />
<b>3</b>.حلقه های تودر تو اول مختصات چشم چپ که قرار است حذف کنیم را میگیرد .<br />
<b>4</b>. حلقه های تودر تو بعدی مختصات چشم راست که قرار است حذف کنیم را میگیرد.<br />
<b>5</b>.عکس زلدا با حذف چشمها در خروجی نمایش داده میشود.
</div>

