
<div dir = "rtl">
    <h1> تمرین چهارم </h1>
</div>

<div dir="rtl">
ابتدا تمام محتویات پوشه img که حاوی benchmark هاست در متغیر file قرار می گیرد
</div>

````
clc;
close all;
clear;
files= dir('img');

````
<div dir="rtl">
    به دلیل اینکه پوشه img حاوی دو پوشه .. و . می باشد از 3 به بعد را در file ریخته شد.
    
</div>

files=files(3:end,:);

<div dir="rtl">
فایل ها یکی یکی خوانده می شوندو با دو متغیر mo , di  مشخص می نماییم. مکان قرار گرفتن عکس های برش خورده 100 در 100 را     
</div>
for i=1:25
    image= imread(files(i).name);
   imgcut=image(size(image,1)-100:size(image,1),size(image,2)-100:size(image,2),size(image,3));
   mo=mod(i-1,5)*100;di=fix((i-1)/5)*100;
   img(di+1:di+101,mo+1:mo+101,:)=imgcut(1:101,1:101,:);
 
end

imshow(img);
````

