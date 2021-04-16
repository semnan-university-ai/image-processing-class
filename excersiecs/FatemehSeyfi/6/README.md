> #تمرین  6
>یک تصویر راه راه بسازید که از سمت بالا سیاه کامل و پایین آن سفید باشد
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

stripeWidth = 2;
imageRows = 512;    % Whatever...
imageColumns = 512; % Whatever...
% imageRows =input("please enter row:");
% imageColumns =input("please enter Columns:");
oneLine=ones(stripeWidth,imageColumns);
wholeImage=repmat( [oneLine;0*oneLine], imageRows/(2*stripeWidth),1);
wholeImage=imrotate(wholeImage,180);
imshow(wholeImage)
```
****
![image](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/FatemehSeyfi/6/q6.png)




<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b></b>یک تصویر   راه راه سیاه ،سفید که از بالا صفحه سیاه کامل و  پایین صفحه سفید به صورت افقی به ضخامت 2  و سایز آن  512*512 با  استفاده از تابع repmat ساخته شد.   <br />

</div>
