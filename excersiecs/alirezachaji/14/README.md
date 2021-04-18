
<div dir="rtl">

#### تمرین 14

#### یک دیتاست تصویری از 12 ساعت مختلف یک شبانه روز ایجاد کنید و این تصاویر را به خاکستری تبدیل کنید و هیستوگرام هر کدام را با یکدیگر مقایسه کنید..
***
#### توضیحات کلی برنامه
قرار داده شده است  time دیتا ست مورد استفاده در این برنامه از تصاویر مربوط به 12 ساعت شبانه روز از یک منظره واحد می باشد که درون پوشه 
این تصاویر توسط برنامه لود شده به تصویر خاکستری تبدیل شده و هیستوگرام هر یک محاسبه و نشان داده شده است
***

#### توضیحات بخش های برنامه
 این قسمت باعث بسته شدن تمام پنجره ها ، ریست شدن تمام متغیر ها و پاک شدن کامند ویندو می گردد <br />

</div>

```matlab

close all         
clear all         
clc    

```
***
<div dir="rtl">
 
   در اين بخش ابتدا محتويات پوشه كه حاول فايل تصوير مي باشد در متغير ريخته شده و سپس توسط حلقه تكرار 12 تايي اين تصاوير به  خاكستري تبديل شده و توسط تابع
   نوشته شده هيستوگرام انها محاسبه گرديده و نمايش داده شده است

 </div>
 
```matlab
image_file=dir('time\*.png');

for i=1:12
        figure;
        a=image_file(i).name;
        add="time\s"+int2str(i)+".png";
        pic=imread(add);
        pic2=rgb2gray(pic2);
        ch_hist(pic2);
        subplot(1,2,1);imshow(pic2);title("Image "+int2str(i));
        subplot(1,2,2);bar(ans);title("Histogram "+int2str(i));
       
end 
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/998f833daa7df3e463dc2ff389eecca480a4ea1f/excersiecs/alirezachaji/14/Exce14.1.png
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.2.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.3.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.4.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.5.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.6.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.7.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.8.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.9.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.10.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.11.png)
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31284691b001dd7603f747b4d6921506f9eed342/excersiecs/alirezachaji/14/Exce14.12.png)
***

