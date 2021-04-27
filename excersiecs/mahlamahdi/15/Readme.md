<div dir= "rtl">
  <h1> تمرین پانزدهم</h1>
  </div>
  
  ````
  clc
clear
close all

````

<div dir= "rtl">
 تبدیل عکس به خاکستری
  </div>


````
p=1;
for i=1:12
dataset=imread("dataset/"+int2str(i)+".jpg");
figure(1);
subplot(4,6,p),imshow(dataset); 
subplot(4,6,p+1),imhist(dataset);
title(i);
p =p+2;
end
````
<div dir= "rtl">
 در مکان توپ زرد مقدار رنگ زمینه را قرار می دهیم
  </div>

![خروجی](assets/result.jpg) 
