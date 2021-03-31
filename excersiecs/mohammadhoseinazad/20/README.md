
### question Info :20. با دستورات ساده ی متلب سعی کنید اسم خودتان را با کلمات فارسی در یک تصویر ایجاد کنید. استفاده از توابع آماده ی رسم کاراکترها در این تمرین مجاز نیست.

###### 
open the code ex20.m with mathlab press **run** button :rocket: 

<div dir = "rtl">
کار درست فانکشنال کردن هر حرف و به جای این کار من در هر قسمت موقعیت حروف داده شود و فانکشن اون حرف صدا بشه
</div>

<div dir = "rtl">
جایگاه هر حرف را در صفحه مشخص کرده و رنگ آن را تغییر میدهیم
</div>

```matlab

close all
clear all
clc

plane = zeros(400,800);


%paye
for i=250:270
    for j=280:750
        plane(i,j) = 1;
    end
end

%payine m
for i=300:320
    for j=700:750
        plane(i,j) = 0.5;
    end
end

%right m
for i=250:320
    for j=750:770
        plane(i,j) = 0.5;
    end
end

%left m
for i=250:320
    for j=680:700
        plane(i,j) = 0.5;
    end
end

%right h
for i=190:250
    for j=630:650
        plane(i,j) = 0.7;
    end
end

%balaye h
for i=170:190
    for j=560:650
        plane(i,j) = 0.7;
    end
end

%dandune h
for i=170:210
    for j=560:580
        plane(i,j) = 0.7;
    end
end

%payine m
for i=300:320
    for j=430:480
        plane(i,j) = 0.5;
    end
end

%right m
for i=250:320
    for j=480:500
        plane(i,j) = 0.5;
    end
end

%left m
for i=250:320
    for j=410:430
        plane(i,j) = 0.5;
    end
end

%d
for i=190:320
    for j=260:280
        plane(i,j) = 0.5;
    end
end

%balaye d
for i=170:190
    for j=200:280
        plane(i,j) = 0.8;
    end
end

%payine d
for i=300:320
    for j=200:280
        plane(i,j) = 0.8;
    end
end

imshow(plane);
```




![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/20/ex20.png)
![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/20/ex20-2.png)

