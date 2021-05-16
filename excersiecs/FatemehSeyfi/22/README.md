

<div dir ="rtl">

تمرین 22:<br/>
    کانال رنگی آبی و قرمز یک تصویر را با هم جابجا کنید و خروجی را نمایش دهید..  
</div>

```
clc;
close all;
clear;
``` 
<div dir ="rtl">
ابتداتصویرمان را می خوانیم و  تغییر اندازه می دهیم و آنرا نمایش می دهیم .    <br/>
</div>

```
orginal=imread('benchmark\girl.png');  % load original
orginal=imresize(orginal,[400,400]);
figure()
imshow(orginal)              % show orignal
```
<div dir ="rtl">
    
در این کد کانال های آبی و قرمز جابجا می شوند .    <br/>
</div>

```
new_image(:,:,1)=orginal(:,:,3);
new_image(:,:,2)=orginal(:,:,2);
new_image(:,:,3)=orginal(:,:,1);

```

<div dir ="rtl">
   نمایش خروجی تصویر   .<br/>
</div>

```
new_image=imresize(new_image,[400,400]);
figure()
imshow(new_image);    % show new
title('new image');
   

```



![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/22/q22.png)




