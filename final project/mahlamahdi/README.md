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
 
 
 
 
 
