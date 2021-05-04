
<div dir ="rtl">

تمرین 17:<br/>
    آسمان تصویر mountain.png را سیاه رنگ کنید.  
</div>

```
clc;
close all;
clear;
``` 
<div dir ="rtl">
ابتداتصویرمان را می خوانیم .    <br/>
</div>

```
 image = imread("../benchmark/mountain.png");	
```
<div dir ="rtl">
در این کدعرض تصویر در حلقه مشخص شده به شرط اینکه اگر بزرگتر از 150 بود  رنگ سیاه در غیر این صورت  اbreak.     <br/>
</div>

```
for j=1:640 
		    for i=1:150
		     if 150<image(i,j)
		         image(i,j)=0;
		     end
		     if image(i+1,j)<150
		         break;
		     end
		    end
		end

```

<div dir ="rtl">
   نمایش خروجی تصویر   .<br/>
</div>

```

		figure;
 		imshow(image) ;
   

```



![out](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/17/q17.png)



