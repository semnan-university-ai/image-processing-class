
<div dir = "rtl">
    <h1> تمرین اول </h1>
</div>

<div dir="rtl">

 دریافت تعداد سطر و ستون صفحه شطرنجی
</div>

````
clc
clear
close all
row = input('Number of Row: ');
colum = input('Number Of Column:');
````
<div dir="rtl">

        اگر مجموع i,j بر 2 بخش پذیر باشد پیکسل صفر و در غیر این صورت پیکسل مقدار 255را دریافت می کند.
</div>

````
for i=1:row
        for j=1:colum
        %% اگر مجموع i,j بر 2 بخش پذیر باشد پیکسل صفر و در غیر این صورت پیکسل مقدار یکرا دریافت می کند.
            if mod((i+j),2)==0
                image(i,j)=0;
            else  
                 image(i,j)=255;
            end
        end
end
imshow(image)
````
