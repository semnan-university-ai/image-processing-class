
### question Info :

###### 5. یک تصویر کوزه ی ناقص رو کاغذ بکشید و تصویر آن را با کمک نرم افزار متلب کامل کنید؛ در واقع تقارن تصویر را به تصویر اصلی بچسبانید و یک کوزه ی کامل ایجاد کنید.

open the code ex5.m with mathlab press **run** button :rocket:

<div dir = "rtl">
عکس را باز کرده چرخانده (فلیپ) و با تابع
horzcat/
دو تصویر را ادغام کرده و 3 تصویر را نمایش می دهد
</div>

```
I = imread('C:\Users\nmzis\OneDrive\Desktop\4197843.jpg'); 
subplot(2,2,1) 
imshow(I)
title 'first image' 
% Flip left/right: 
Ir = flip(I,2); 
subplot(2,2,2) 
imshow(Ir)
title 'changed image'
% Join the original and flipped images: 
IIr = horzcat(Ir,I); 
subplot(2,2,3:4) 
imshow(IIr)
title 'rejoined images'

``` 

contributed from (https://www.mathworks.com/matlabcentral/answers/329639-flip-image-from-one-side-to-another)
![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/5/ex5.png)
