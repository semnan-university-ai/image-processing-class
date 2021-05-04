
### question Info 
24 کانال رنگی قرمز تصویر watch.png را با کانال رنگی قرمز تصویر pool.png جا به جا کنید و خروجی هر دو را نمایش دهید.

###### 
open the code ex24.m with mathlab press **run** button :rocket: 
<div dir = "rtl">
گرفتن کانال قرمز دو عکس
</div>

```matlab
R_watch = imgwatch(:, :, 1);
R_pool = imgpool(:, :, 1);
```

<div dir = "rtl">
جایگذاری دو کانال به جای هم
</div>

```matlab
          imgwatch(r,c,1)=R_pool(r,c);
          imgpool(r,c,1)=R_watch(r,c);

```




![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/24/24.png)

