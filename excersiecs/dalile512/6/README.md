
<div dir ="rtl">

###  تمرین 6:<br/>
</div>






```
clc;
close all;
clear;
```
<div dir ="rtl">

*   یک تصویر راه راه ایجاد می کنیم که از سمت بالا سیاه کامل و پایین آن سفید باشد.<br/>
</div>
 

```
image=zeros(255*3);
for i = 0:255
    image((i*3)+1:(i*3)+3,1:256*3)=i/255;
end
```
<div dir ="rtl">

*   نمایش تصویر خروجی:<br/>
</div>

```
 imshow(image), title('Gray Scale  image');
```


### out:![out](image6.JPG)
