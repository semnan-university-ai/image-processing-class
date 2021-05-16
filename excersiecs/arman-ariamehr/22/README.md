<div dir = "ltr">
    
```
input_im = imread('benchmark\fruits.png');
[row , col , si] = size(input_im);

r = input_im( : , : , 1);
g = input_im( : , : , 2);
b = input_im( : , : , 3);

new_r = b;
new_g = g;
new_b = r;

new_im = uint8( zeros(row , col , si) );

new_im( : , : , 1 ) = new_r;
new_im( : , : , 2 ) = new_g;
new_im( : , : , 3 ) = new_b;

subplot(1,2,1)
imshow(input_im);
title('main picture');

subplot(1,2,2)
imshow(new_im);
title('new picture');
```
</div>

<div dir = "rtl">
  
  پس از خواندن تصویراندازه آن محاسبه می شود.
  سپس کانال قرمز ، سبز و آبی آن استخراج می گردد.
  
  در گام بعدی بنا بر خواسته سوال کانال آبی و قرمز جا به جا می گردد.
  
  در نهایت هم تصویر جدیدی به اندازه تصویر ورودی ساخته شده و کانال ها در تصویر جدید جای گزین می گردد.
  
  تصویر ورودی و خروجی آن :
  
  ![image](https://user-images.githubusercontent.com/80279784/116542772-4950e880-a902-11eb-9a22-956f2a6e790d.png)

  
</div>
