> # Exercise 4
>یک تصویر مربعی 500*500 ایجاد کنید که شامل بخش گوشه ی سمت راست و پایین تصاویر بنچ مارک ها باشد؛ از هر تصویر یک مربع 100*100 جدا کنید.
***
>CODE

Main Program
```ruby
files =dir('benchmark/*.png');
n= size(files);
blankImage=zeros(500,500); % ساخت ماتریس صفر با ابعاد 500 در 500 برای قرار دادن تصویر ها درون آن
blankImage=uint8(blankImage); % تبدیل ماتریس صفر به uint8
i=1;j=1;
for k =1:25 % حلقه به تغاد غکس ها
        if j==501   % رفتن به سر جدید برای قرار دادن عکس ها
            i=i+100;
            j=1;
        end
        name =files(k).name;
        img_cuted=image_cut(name,100); % استفاده از تابع برید عکس
        blankImage(i:i+99,j:j+99)=img_cuted; قرار دادن آن در تصویر خالی
        j=j+100;   
        imshow(blankImage); % نمایش عکس
end
```
****
Image_cut function
```ruby
function imageOut = image_cut(imageName,cropSiشze)
%E4_FUN_CUT Summary of this function goes here
%   Detailed explanation goes here
image=imread(strcat('benchmark/',imageName));
        n=size(size(image));
        if n(2) ==3 % اگر عکس رنگی بود به سیاه و سفید تبدیل می کنیم
            image=rgb2gray(image);
        end
        imageSize =size(image);
        image_cuted =image(imageSize(1,1)-(cropSize-1):imageSize(1,1),imageSize(1,2)-(cropSize-1):imageSize(1,2));% برید عکس با استفاده از آرایه ها
        imageOut=image_cuted;
end
```
***
![image](https://user-images.githubusercontent.com/48456571/113275402-034d3880-92f4-11eb-92b6-3ef2148adde5.png)

<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>
