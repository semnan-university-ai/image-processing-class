<div dir="rtl">

#### تمرین24 <br />


### کد:
</div>

```matlab
clc;clear;close all;

imgwatch=imread("../../../benchmark/watch.png");
[rw,cw,zw]=size(imgwatch);
subplot(2,2,1),imshow(imgwatch)
imgpool=imread("../../../benchmark/pool.png");
[rp,cp,zp]=size(imgpool);
subplot(2,2,2),imshow(imgpool);
R_watch = imgwatch(:, :, 1);
R_pool = imgpool(:, :, 1);
imgwatch(:, :, 1)=0;
imgpool(:, :, 1)=0;
for r=1:rw
   for c=1:cw
       if (r<=rp&& c<=cp)
          imgwatch(r,c,1)=R_pool(r,c);
          imgpool(r,c,1)=R_watch(r,c);
       end
   end
end
subplot(2,2,3),imshow(imgwatch);
subplot(2,2,4),imshow(imgpool); 
```

<div dir="rtl">

---
#### برسی کد:

1. <br/>
- لود تصویر رنگی در متغیر img <br/>
</div>

```matlab
imgwatch=imread("../../../benchmark/watch.png");
imgpool=imread("../../../benchmark/pool.png");

```

---
3. <br/>
- حلقه تو در تو جهت جابه جایی رنگ آبی و قرمز <br/>
</div>

```matlab
for r=1:rw
   for c=1:cw
       if (r<=rp&& c<=cp)
          imgwatch(r,c,1)=R_pool(r,c);
          imgpool(r,c,1)=R_watch(r,c);
       end
   end
end
```
<div dir="rtl">

---
4-<br/>
- نمایش تصویر های خروجی 
</div>

```matlab
subplot(2,2,3),imshow(imgwatch);
subplot(2,2,4),imshow(imgpool);
```
<div dir="rtl">
با تشکر از جناب آقای مجیدی 
