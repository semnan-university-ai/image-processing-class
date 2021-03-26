
### question Info :

###### 14. یک دیتاست تصویری از 12 ساعت مختلف یک شبانه روز ایجاد کنید و این تصاویر را به grayscale تبدیل کنید و هیستوگرام هر کدام را با یکدیگر مقایسه کنید.

open the code ex14.m with mathlab press **run** button :rocket: 

<div dir = "rtl">
در این قسمت عکس ها را گرفته و لوپ زده می شود
</div>

```matlab
images = dir('D:\matlab\math\bin\benchmark\*.png');

for i= 1:length(images)
    image=(images(i).name);

```

<div dir = "rtl">
این قسمت از کد برای چک کردن خاکستری بودن یا نبودن کد است تا ارور ندهد
</div>

```matlab
    [rows, columns, numberOfColorChannels] = size(image);
    if numberOfColorChannels > 1
    % It's a true color RGB image.  We need to convert to gray scale.
        Igray = rgb2gray(image);
    else
    % It's already gray scale.  No need to convert.
    Igray = image;
    end
```

<div dir = "rtl">
هیستوگرام های 12 عکس در یک پلات برای مقایسه نشان داده میشود
</div>

```matlab
    Image = imread(Igray);
    subplot(6,2,i)
    imhist(Image);
```

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/14/ex14.png)

