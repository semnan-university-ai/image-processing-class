<div dir='rtl' style='text-align:right'>
مستندات تمرین پایانی
</div>
</br>

<div dir='rtl' style='text-align:right'>
دستورات اولیه برای پاکسازی مقادیر و تصویر را وارد میکنیم.
</div>
</br>

```
clc;
close all;
clear;

```

<div dir='rtl' style='text-align:right'>
مقدار دهی اولیه را که مربوط به طول و عرض تصویری که کپچا را در آن نمایش می دهیم و تعداد حروف کپچا را نیز وارد میکنیم.
</div>
</br>

```
alphabet_count = 20;
width = 500;
height = 200;

```

<div dir='rtl' style='text-align:right'>
برای اینکه هنگام تغییر تعداد حروف کپچا اندازه ی کادر دچار تغییر نشود و حروف به خوبی در آن نمایش داده شود مقادیر ورودی را با استفاده از تابع Normalize به شکل پویا تبدیل میکنیم.
</div>
</br>

```
[width,height] = Normalize(alphabet_count,width,height);

```

<div dir='rtl' style='text-align:right'>
مقادیر نرمالایز شده را به عنوان ورودی تابع MyFunction وارد میکنیم تا عملیات ایجاد کپچا را انجام دهد و خروجی را در متییر captcha_image قرار داده و آن را به کمک imshow نمایش می دهیم و در آخر هم تصویر را به کمک تابع ocr متلب میخوانیم.
</div>
</br>

```
captcha_image = MyFunction(alphabet_count,width,height);
imshow(im2bw(captcha_image, 0.3));
ocr(captcha_image)

```

<div dir='rtl' style='text-align:right'>
تابع Normalize به این صورت عمل میکند که حاصل تقسیم تعداد حروف کپچا به 10 را در مغییر cn قرار میدهیم اگر cn = 0 باشد مقادیر کادر را تغییر نمیدهیم و اگر cn = 1  یا cn = 2 بود عرض کادر را تغییر میدهیم ولی ارتفاع را ثابت نگه میداریم و اگر cn > 2 باشد مقدار طول و عرض کادر را تغییر میدهیم و مقادیر طول و عرض را به عنوان خروجی تابع بر میگردانیم.
</div>
</br>

```
function [width,height] = Normalize(alphabet_count,width,height)
    cn = floor(alphabet_count/10);
    if( cn == 0)
        width = width * 1;
        height = height * 1;
    elseif( cn == 1 || cn == 2)
        width = width * 1.5;
        height = height * 1;
    else
        width = width * cn;
        height = height * 2;
    end
end

```

<div dir='rtl' style='text-align:right'>
برای خواندن تصاویر حروف نیز آنها را از مسیر مورد نظر خوانده و در متغیر alphabet قرار میدهیم و در نهایت آن را تبدیل به uint8 میکنیم و به عنوان خروجی بر میگردانیم.
</div>
</br>


```
function alphabet = ReadAlphabet()
    alphabet(:,:,1) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\A.txt");
    alphabet(:,:,2) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\B.txt");
    alphabet(:,:,3) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\C.txt");
    alphabet(:,:,4) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\D.txt");
    alphabet(:,:,5) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\E.txt");
    alphabet(:,:,6) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\F.txt");
    alphabet(:,:,7) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\G.txt");
    alphabet(:,:,8) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\H.txt");
    alphabet(:,:,9) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\I.txt");
    alphabet(:,:,10) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\J.txt");
    alphabet(:,:,11) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\K.txt");
    alphabet(:,:,12) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\L.txt");
    alphabet(:,:,13) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\M.txt");
    alphabet(:,:,14) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\N.txt");
    alphabet(:,:,15) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\O.txt");
    alphabet(:,:,16) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\P.txt");
    alphabet(:,:,17) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\Q.txt");
    alphabet(:,:,18) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\R.txt");
    alphabet(:,:,19) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\S.txt");
    alphabet(:,:,20) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\T.txt");
    alphabet(:,:,21) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\U.txt");
    alphabet(:,:,22) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\V.txt");
    alphabet(:,:,23) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\W.txt");
    alphabet(:,:,24) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\X.txt");
    alphabet(:,:,25) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\Y.txt");
    alphabet(:,:,26) = dlmread("..\..\excersiecs\arman-ariamehr\19\alphabet\Z.txt");
    alphabet = uint8(alphabet);
end
```

<div dir='rtl' style='text-align:right'>
تابع ایجاد کپچا به صورت زیر است که در ادامه بخش به بخش توضیح میدهیم.
</div>
</br>


```
function captcha_image = MyFunction(alphabet_count,width,height)
    alphabet = ReadAlphabet();
    captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
    captcha_alphabet = uint8(captcha_alphabet);

    captcha_image = zeros(size(alphabet(:,:,1)));
    captcha_image = alphabet(:,:,randi([1 26]));

    for i = 2 : alphabet_count
        if captcha_alphabet(1,i) < 1
            captcha_alphabet(1,i) = 1;
        end
        if captcha_alphabet(1,i) > 26
            captcha_alphabet(1,i) = 26;
        end
        captcha_image = [ captcha_image alphabet(:,:,captcha_alphabet(1,i)) ];
    end
    captcha_image = imresize(captcha_image, [height width]);
end

```

<div dir='rtl' style='text-align:right'>
ابتدا با فراخوانی تابع ReadAlphabet تصاویر را از ورودی میخوانیم.
</div>
</br>

```
alphabet = ReadAlphabet();

```

<div dir='rtl' style='text-align:right'>
متغیر کپچا به اندازه متغیر alphabet_count (که نشان دهنده تعداد حروف کپچا است) می باشد. و نوع آن را هم uint8 قرار میدهیم.
</div>
</br>

```
captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
captcha_alphabet = uint8(captcha_alphabet);

```

<div dir='rtl' style='text-align:right'>
در ادامه متغیر captcha_image را تعریف کرده ایم که نشان دهنده تصویر نهایی حروف کپچا در کنار یکدیگر است. در خانه ی اول آن با تولید یک عدد تصادفی بین 1 تا 26 حرف متناظر با آن را در captcha_image قرار میدهیم.
</div>
</br>

```
captcha_image = zeros(size(alphabet(:,:,1)));
captcha_image = alphabet(:,:,randi([1 26]));

```

<div dir='rtl' style='text-align:right'>
برای خانه های باقی مانده نیز حروف متناظر با عدد موجود در متغیر captcha_alphabet را در captcha_image قرار میدهیم.
</div>
</br>

```
for i = 2 : alphabet_count
    if captcha_alphabet(1,i) < 1
        captcha_alphabet(1,i) = 1;
    end
    if captcha_alphabet(1,i) > 26
        captcha_alphabet(1,i) = 26;
    end
    captcha_image = [ captcha_image alphabet(:,:,captcha_alphabet(1,i)) ];
end
	
```

<div dir='rtl' style='text-align:right'>
در نهایت نیز تصویر کپچا را بر اساس طول و عرض تصویر تغییر سایز میدهیم و به عنوان خروجی تابع بر میگردانیم.
</div>
</br>

```
captcha_image = imresize(captcha_image, [height width]);
	
```

<div dir='rtl' style='text-align:right'>
برای تست تابع ocr روی 150 تصویر هم مسیر ذخیره سازی و فرمت تصاویر را به برنامه میدهیم و کل تصاویر را پیمایش میکند و بر اساس نام آنها خوانده و به عنوان ورودی تابع ocr میدهد.
</div>
</br>

```
close all;
clear;
clc;

path = dir('150_Captcha/*.jpg');
count = 0;
for i=1:1:150
   name = path(i).name;
   f = strcat('150_Captcha/',name);
   im = imread(f);
   fprintf('IMAGE %d===============================================\n',i);
   result = ocr(im)
   [pathstr, n, ext] = fileparts(name);
   r_text = result.Words;
   tf = strcmp(r_text,n);
   if(tf==0)
       continue;
   else
       count = count + 1;
   end
   fprintf("%s\n",n);
end
acc = (count/150)*100;
fprintf("\nCount : %d\n",count);
fprintf("\nAccuracy : %.2f\n",acc);
```

<div dir='rtl' style='text-align:right'>
بعد از برچسب گذاری دستی تصاویر آنها را به عنوان ورودی تابع ocr میدهیم تا دقت تابع روی تصاویرمان را محاسبه کنیم.در این قسمت ابتدا مسیر تصاویر را مشخص کرده و تصاویر را یک به یک میخوانیم و خروجی تابع ocr را در متغیر result قرار میدهیم.سپس از نام تصاویر پسوند فایل را جدا میکنیم و خروجی تابع ocr  برای تصویر را در متغیر r_text قرار مید هیم و با تابع strcmp خروجی تصویر و نام تصویر را که به صورت دستی بر چسب زده بودیم مقایسه میکنیم و در صورت برابری یه واحد به count اضافه میکنیم تا در نهایت متوجه شویم که تابع چه تعداد خروجی درست داشته است.در آخر هم درصد دقت را محاسبه می کنیم که برای تصاویر تولید شده فقط 8 تصویر درست را تشخیص داد و دقت 5.33 درصدی دارد.
</div>
