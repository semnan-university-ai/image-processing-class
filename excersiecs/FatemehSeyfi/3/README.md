> # تمرین 2
>برنامه ای بنویسید که یک عدد را به عنوان شعاع دایره و یه عدد را به عنوان مکان رسم دایره از بگیرد و در یک تصویر 1000*1000 پیکسل مشکی رنگ آن دایره را با رنگ سفید نمایش دهد. 
***
>CODE

Main Program
```ruby
close all;
clear all;
clc;

image=imread("benchmark/serrano.png");
i = imread("benchmark/serrano.png");
i=imresize(i,[512,512]);
figure;
imshow(i);
imagesize=size(i);
for k=1:1:imagesize(1,1)
    for l=1:1:imagesize(1,2)
       
        a(k,l) = (.299*i(k,l,1))+(.587*i(k,l,2))+(.114*i(k,l,3));
    end
end
figure
imshow(a); 
```
****
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/3/q3.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابتدای برنامه عکس را بارگذاری کردیم<br />

<b>3</b>.    حلقه تو در تو وبا پیمایش تک تک پیکسلها و محاسبه سطح خاکستری از روی 3 مولفه RGB در فورمول تصویرمان خاکستری می شود..<br />

    
</div>

