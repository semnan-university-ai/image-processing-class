<div dir="rtl">

#### 22 تمرین <br />



### کد:
</div>

```matlab
clc;clear;close all;

img=imread("../../../benchmark/watch.png");
subplot(1,2,1),imshow(img);
R = img(:, :, 1);G = img(:, :, 2);B = img(:, :, 3);
[sr,sc,sz] = size(img);
imgout = zeros(sr, sc, sz, 'uint8');
for r=1:sr
   for c=1:sc
       imgout(r,c,1)=B(r,c);
       imgout(r,c,2)=G(r,c);
       imgout(r,c,3)=R(r,c);
   end
end
subplot(1,2,2),imshow(imgout);
```

با تشکر از آقای احسان مجیدی و توضیحات کامل آقای شکری در کلاس