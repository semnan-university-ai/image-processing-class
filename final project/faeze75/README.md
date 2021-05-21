# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : faezeh fereydonian
* github id : faeze75
* Email :faezehfereydonian@gmail.com
* Type : rozane
# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : Omid Gholami
* github id : omidgholami74
* Email : omidgholami@hotmail.com
* Type : roozaneh
# image-processing-class
image processing class - 992

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
تابع main
تابع فراخوانی داده های اولیه که شامل حروف الفبا انگلبسی میباشد
</div>

 ````
alphabet=loadchar();

````
 <div dir="rtl">
حلقه اکرار 150 تایی برای ایجاد 150تا کپچا مختلف 
</div>
 
 ````
for k=1:150
````
<div dir="rtl">
تابع rotation  وظیفه چرخاندن کاراکتر هایمان دارد
 </div>
 
 ````
 
al={};
finalImage=rotation(al,alphabet);

````
<div dir="rtl">
 با این دستور نویز فلفل و نمکی بر رو کپچا اعمال می کنیم و در نهایت تصویر را نمایش میدهیم. 
 </div>

````
finalImage= imnoise(finalImage,'salt & pepper',0.1);
imshow(finalImage);

````
<div dir="rtl">
با این تابع تعدادی خطوط به صورت رندوم در تصویر ایجاد میکنیم
 </div>

````
position();
````
<div dir="rtl">
در این قسمت از کاربر میخواهیم تصویر کپچایی که مشاهده و تشخیص میدهد را بنویسید و همزمان از تابع ocr  هم برای تشخیص استفاده میکنیم که برای 150 تا عکس تست شده این تابع قادر به تشخیص نبوده است
 </div>

````
name=input('what do you saw?','s');
print('-dpng',name);
ocr(finalImage)

````

<div dir="rtl">
 <h3> loadchar</h3>
در ایت تابع با دستور dlmread  فایلی که از هر کاراکتر حاضر کرده ایم را بارگذاری می کنیم.
</div>

````
function alphabet= loadchar()
alphabet(:,:,1) = dlmread('alphabet\A.txt');
alphabet(:,:,2) = dlmread('alphabet\B.txt');
alphabet(:,:,3) = dlmread('alphabet\C.txt');
alphabet(:,:,4) = dlmread('alphabet\D.txt');
alphabet(:,:,5) = dlmread('alphabet\E.txt');
alphabet(:,:,6) = dlmread('alphabet\F.txt');
alphabet(:,:,7) = dlmread('alphabet\G.txt');
alphabet(:,:,8) = dlmread('alphabet\H.txt');
alphabet(:,:,9) = dlmread('alphabet\I.txt');
alphabet(:,:,10) = dlmread('alphabet\J.txt');
alphabet(:,:,11) = dlmread('alphabet\K.txt');
alphabet(:,:,12) = dlmread('alphabet\L.txt');
alphabet(:,:,13) = dlmread('alphabet\M.txt');
alphabet(:,:,14) = dlmread('alphabet\N.txt');
alphabet(:,:,15) = dlmread('alphabet\O.txt');
alphabet(:,:,16) = dlmread('alphabet\P.txt');
alphabet(:,:,17) = dlmread('alphabet\Q.txt');
alphabet(:,:,18) = dlmread('alphabet\R.txt');
alphabet(:,:,19) = dlmread('alphabet\S.txt');
alphabet(:,:,20) = dlmread('alphabet\T.txt');
alphabet(:,:,21) = dlmread('alphabet\U.txt');
alphabet(:,:,22) = dlmread('alphabet\V.txt');
alphabet(:,:,23) = dlmread('alphabet\W.txt');
alphabet(:,:,24) = dlmread('alphabet\X.txt');
alphabet(:,:,25) = dlmread('alphabet\Y.txt');
alphabet(:,:,26) = dlmread('alphabet\Z.txt');
end

````

<div dir="rtl">
 <h3> rotation</h3>
 در این تابع ابتدا یک حلقه با 4 تکرار ایجاد میکنیم که به صورت رندوم 4 کاراکتر از داده هایی که در ورودی بارگذاری  کرده بودیم را امنتخاب میکند1.</br>
  2.سپس یک حلقه دیگر برای چرخش کاراکترمان ایجاد کرده ایم که به صورت رندوم از بین 4 کاراکتر انتخاب شده در مرحله قبل انتخاب می کند و به اندازه 35 درجه چرخش  میدهد</br>
  3. و در آخر هم پس از اعمال تغییرات در مراحال قبل این چهار تصویر را کنار هم قرار میدهیم وتبدیا به یک عکس میکنیم و در خروجی میفرستیم
 </div>

````
function finalImage=rotation(al,alphabet)

for i=1:4
    R=randi([1 26]);
    al{i}=alphabet(:,:,R);
end
for i=1:2
rand=randi([1 4]);
rotate=imrotate(al{rand},35);
size=(imresize(rotate,[25 25]));
al{rand}=size;
end 
finalImage=cat(2,al{1},al{2},al{3},al{4});
finalImage=imresize(finalImage,[100 300]);
end
````


<div dir="rtl">
 <h3> position()</h3>
 
در این تابع 4 خط  به صورت رندوم در فضای کل تصویر ایجاد میکنیم  </div>

````
function px =position()
px={};
py={};
for i=1:8
    px{i}=randi([1 300]);
    py{i}=randi([1 100]);
    
end 
line([px{1} px{2}],[py{1} py{2}] ,'Color','white');
line([px{3} px{4}],[py{3} py{4}] ,'Color','white');
line([px{5} px{6}],[py{5} py{6}] ,'Color','white');
line([px{7} px{8}],[py{7} py{8}] ,'Color','white');
end

````


</div>
