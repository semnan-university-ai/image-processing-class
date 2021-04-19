<div dir ="rtl">

###  تمرین 13:<br/>
</div>

<div dir ="rtl">

*  روی یک تصویر نگاتیو نویز فلفل نمکی را با اعداد مختلف تست کردیم و میانگین تمام پیکسل های آن را در یک جدول،مشخص کردیم.   <br/>



</div>





```
clc;
clear;
close all;

image = imread('saat.png');
im = rgb2gray(image);
```


<div dir ="rtl">

*  روی یک تصویر نگاتیو نویز فلفل نمکی را با اعداد مختلف تست کردیم و میانگین تمام پیکسل های آن را در یک جدول،مشخص کردیم.   <br/>

</div>




```
img_with_noise1= imnoise(im, 'salt & pepper', 0.05);
img_with_noise2 = imnoise(im, 'salt & pepper',0.1);
img_with_noise3 = imnoise(im, 'salt & pepper', .2);
img_with_noise4 = imnoise(im, 'salt & pepper', .3);
img_with_noise5 = imnoise(im, 'salt & pepper', .4);
img_with_noise6 = imnoise(im, 'salt & pepper', .6);
img_with_noise7 = imnoise(im, 'salt & pepper', .7);
img_with_noise8 = imnoise(im, 'salt & pepper', .9);

```

```
mean_noise1 = round(mean(mean(img_with_noise1)));
mean_noise2 = round(mean(mean(img_with_noise2)));
mean_noise3 = round(mean(mean(img_with_noise3)));
mean_noise4 = round(mean(mean(img_with_noise4)));
mean_noise5 = round(mean(mean(img_with_noise5)));
mean_noise6 = round(mean(mean(img_with_noise6)));
mean_noise7 = round(mean(mean(img_with_noise7)));
mean_noise8 = round(mean(mean(img_with_noise8)));
```

```
display(mean_noise1);
display(mean_noise2);
display(mean_noise3);
display(mean_noise4);
display(mean_noise5);
display(mean_noise6);
display(mean_noise7);
display(mean_noise8);



 subplot(2,4,1);
 imshow(img_with_noise1);title('noise=0.05','Color','m');
 
 subplot(2,4,2);
 imshow(img_with_noise2);title('noise=0.1','Color','m');
 
 subplot(2,4,3);
 imshow(img_with_noise3);title('noise=0.2','Color','m');
 
 subplot(2,4,4);
 imshow(img_with_noise4);title('noise=0.3','Color','m');
 
 
 subplot(2,4,5);
 imshow(img_with_noise5);title('noise=0.4','Color','m');
 
 subplot(2,4,6);
 imshow(img_with_noise6);title('noise=0.6','Color','m');
 
 
 subplot(2,4,7);
 imshow(img_with_noise7);title('noise=0.7','Color','m');
 
 subplot(2,4,8);
 imshow(img_with_noise8);title('noise=0.9','Color','m');
 
 
 suptitle('Salt & Pepper ');

```



out1=![out](t13.png)









|     Image      | mean_noise(salt & pepper) | 
|     :---       |           :---:            |          
|   noise=0.05   |            217            | 
|   noise=0.1    |            212            | 
|   noise=0.2    |            203            | 
|   noise=0.3    |            193            | 
|   noise=0.4    |            184            | 
|   noise=0.6    |            165            | 
|   noise=0.7    |            156            | 
|   noise=0.9    |            138            | 
