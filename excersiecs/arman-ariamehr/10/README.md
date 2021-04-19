<div dir = "ltr">
    
```
captcha = zeros(25 , 125);
cut = 1;
for i = 1 : 5
    guess = randi([0 9]);
    if guess == 0
        add = 'digit\0.txt';
    elseif guess == 1
        add = 'digit\1.txt';
    elseif  guess == 2
        add = 'digit\2.txt';
    elseif  guess == 3
        add = 'digit\3.txt';
    elseif  guess == 4
        add = 'digit\4.txt';
    elseif  guess == 5
        add = 'digit\5.txt';
    elseif  guess == 6
        add = 'digit\6.txt';
    elseif  guess == 7
        add = 'digit\7.txt';
    elseif  guess == 8
        add = 'digit\8.txt';
    else
        add = 'digit\9.txt';
    end
    data = dlmread(add);
    cols = size(data,2);
    captcha( :  , cut : cut + cols - 1) = data;
    cut = cut + cols;
end
captcha = imnoise(captcha , 'salt & pepper' , 0.1);
imshow(captcha);
```
</div>

<div dir = "rtl">
  اندازه هر تصویر برابر 25 در 25 پیکسل می باشد
  از آن جا که باید 5 تصویر کنار یک دیگر قرار بگیرند اندازه کپچا برابر 25 در 125 پیکسل می شود
  با چرخش حلقه ای به تعداد گفته شده در بالا آدرس یک فایل بازیابی شده و آن تصویر در کپچا قرار می گیرد
  در نهایت برای سخت تر شدن درک کپچا به تصویر نویز اعمال می شود
  
  خروجی برنامه :
  
  ![image](https://user-images.githubusercontent.com/80279784/113266359-6df97680-92ea-11eb-99d0-0e6da110dfe4.png)

</div>
