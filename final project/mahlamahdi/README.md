# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : ---
* github id : ---
* Email : ---
* Type : ---

<div dir="rtl">
 
 <h1> تمرین نهایی</h1>
 <hr>
 
 <h3> برنامه ای که در تمرین شماره ی 19 در کلاس توسط بنده حل شده است را از پوشه ی class دانلود کنید و کارهای زیر را روی آن انجام دهید:</h3>  
<ul>
 <li> روشی که انجام شده است را بهبود ببخشید.</li>
 <li>بخش های مختلف این برنامه را به صورت تابع در فایل جداگانه بسازید و آن ها را ساده تر فراخوانی کنید.
</li>
 <li>کپجاهای سخت تری ایجاد کنید فقط نکته اینکه از حوزه ی برنامه ی اولیه خارج نشوید
</li>
 <li>
  150 عکس با برنامه ی خود تولید کنید و آن را ذخیره کنید و بعد از ذخیره سازی آن در یک فایل خودتان با چشم کپچاها را تشخیص دهید و برچسب بزنید.
  </li>
 <h6>خروجی تابع ocr   و میزانی که متلب بتواند کپچای تصویری شما را شناسایی کند یکی از معیارهای مناسب برای سنجش برنامه ی شماست</h6>

</ul>
</div>

<div dir="rtl">
 پاک کردن command window و صفحه نمایش و بسته نمودن پنجره ها
 </div>
 
````
clc;
close all;
clear;
````
 <div dir="rtl">
استفاده از متغیر Result برای ذخیره نمودن 150 عکس خروجی و تعیین فیلد های زیر:
 <ul>
  <li>Number: شماره عکس</li>
  <li>Captcha not modify:کپچایی که تغییر پیدا نکرده است</li>
  <li>OCR1:تشخیص OCR قبل از اینکه تغییرات اصلی روی آن اعمال شود</li>
  <li>Captcha:کپچای تغییر یافته</li>
  <li>OCR:تشخیص OCR از روی کپچای تغییر یافته</li>
  <li>HumanGuess:حدس انسان</li>
 </ul>
 
</div>

 ````
 result = cell(150,6);
result(1,:)={'Number','Captcha not modify','OCR1','Captcha','OCR','HumanGuess'};
````
 <div dir="rtl">
تعداد کاراکتر های تصویر کپچا اعدادی بین 4 تا 6 مشخص می شود. اندازه تصویر خروجی کپچا نیز بر این اساس تعیین می شود.<br>
 captcha_image2 نیز برای مشخص کردن کپچای بدون تغییر می باشد.</br>
 <h4>توسط تابع get_alphabet  تصاویر هریک از کاراکتر های کپچا تولید می شود 
</h4>
</div>
 
 ````
 for j = 1: size(result,1)
alphabet_count = randi([4,6]);
width = 300*alphabet_count;
height = 300;
captcha_alphabet = [ randi([1 62],1,alphabet_count,'uint8'); ];
captcha_alphabet = uint8(captcha_alphabet);
alphabet=get_alphabet();
captcha_image = zeros(size(alphabet(:,:,1)));

captcha_image = alphabet(:,:,captcha_alphabet(1,1));
captcha_image2 = alphabet(:,:,captcha_alphabet(1,1));

````
<div dir="rtl">
 
اعمال یکسری توابع به نام های rotate،medfilt2،noiseو insert_line  به کپچای تولید شده به منظور تشخیص سخت تر OCR متلب.
 
 </div>
 
 ````
 
 for i = 2 : alphabet_count
    captcha_image = [ captcha_image alphabet(:,:,captcha_alphabet(1,i)) ];
    captcha_image2 = [ captcha_image2 alphabet(:,:,captcha_alphabet(1,i)) ];
     [m ,n ] = size(captcha_image);
    captcha_image = rotate(captcha_image, m,n);  
end
%captcha_image = medfilt2(captcha_image);
captcha_image = noise(captcha_image);
captcha_image = insert_line(captcha_image, height ,width);
captcha_image = imresize(captcha_image, [height width]);

````
