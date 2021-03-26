
### question Info :

###### بدون استفاده از توابع آماده ی متلب یک تصویر را با 45،90،120،180 درجه بچرخانید؛ در تصاویری که چرخش تصویر باعث خارج شدن از حالت مربعی می شود پیکسل های خالی را برابر رنگ مشکی قرار دهید و پیکسل های خارج شده از محدوده را نادیده بگیرید.

open the code ex8.m with mathlab press **run** button :rocket: 

when this quete'enter degree of rotation=' appeared type the degree that you want to rotate

<div dir = "rtl">
با استفاده از کدهای موجود در دو سایت زیر نوشته شده
</div>

```
(https://www.imageeprocessing.com/2011/06/image-rotation.html)
(https://stackoverflow.com/questions/19684617/image-rotation-by-matlab-without-using-imrotate)
```

<div dir = "rtl">
درجه چرخش را می گیرد
</div>

```
deg=input('enter degree of rotation=');
```

<div dir = "rtl">
نقطه میانه را می یابد
</div>

```
midx=ceil((size(C,1)+1)/2);
midy=ceil((size(C,2)+1)/2);
```

<div dir = "rtl">
انجام تبدیلات برای محاسبه درست چرخش
</div>

```
        %convert from cartesian to polar
        [t,r]=cart2pol(i1,j-midy);
        %Convert from radians to degree and add the degree value
        t1=rad2deg(t)+deg;
        %Convert from degree to radians
        t=deg2rad(t1);
        %Convert to Cartesian Co-ordinates
        [x,y]=pol2cart(t,r);
        x1(m)=round(x+midx);
        x2(m)=round(y+midy);
        m=m+1;
```

<div dir = "rtl">
اعمال چرخش ها
</div>

```
        C(x1(n),x2(n),:)=A(i,j,:);
       
        n=n+1;
```

contributed from (https://www.imageeprocessing.com/2011/06/image-rotation.html)
		 (https://stackoverflow.com/questions/19684617/image-rotation-by-matlab-without-using-imrotate)

#### 45 degree
![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/8/45.png)

#### 90 degree
![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/8/90.png)

#### 120 degree
![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/8/120.png)

#### 180 degree
![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/8/180.png)