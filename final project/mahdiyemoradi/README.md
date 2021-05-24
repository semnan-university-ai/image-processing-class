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

 
 
## پروژه ی دانشجویان گروه 2 
 
 
 
 ****توضیح کدهای پروژه
![image](https://user-images.githubusercontent.com/79846870/119413364-ed2b7b00-bc99-11eb-9af8-602852adf406.png)


<div dir='rtl' style='text-align:right'>
کل دستورات و صفحه کد پاکسازی می شود 
</div>
</br>

```
clc;
close all;
clear;

```

<div dir='rtl' style='text-align:right'>
 
 طول و عرض تصویری که کپچا در آن نماش می دهیم را مشخص می کنیم  و 150تصویر کپچا ایجاد می کنیم 
  
</div>
</br>

```
width = 200;
height = 500;
for i=1:150
```
<div dir='rtl' style='text-align:right'>
را جهت ایجاد داده های عددی 0-9 فراخوانی می کنیم  Data   تابع 


</div>
</br>

```
alphabet= Data();

```
<div dir='rtl' style='text-align:right'>
تعداد حروف کپچا و نوع آن را مشخص می کنیم
</div>
</br>

```
image=creat(alphabet,5);
```

<div dir='rtl' style='text-align:right'>
 کد زیر نویزهای فلفل نمکی و چرخش تصویر را انجام می دهد

</div>
</br>

```
image= imnoise(image,'salt & pepper',0.24);
image=rotate(image);

```

<div dir='rtl' style='text-align:right'>
 
  تصویر را با نمایش میدهیم و با ocr    متلب می خوانیم
</div>
</br>

```
imshow(image);
ocr(image)

```




***توضیح تابع ها

<div dir='rtl' style='text-align:right'>
 
در این برنامه سه تابع تعریف شده است با نام های زیر 

</div>
</br>

تابع Data
تابع creat
تابع rotate




## تابع Data



![data](https://user-images.githubusercontent.com/79846870/119410956-1813d000-bc96-11eb-875a-26648895b728.PNG)

<div dir='rtl' style='text-align:right'>
 

برای خواندن تصاویر حروف نیز آنها را از مسیر مورد نظر خوانده و در متغیر alphabet قرار میدهیم و در نهایت آن را تبدیل به uint8 میکنیم و به عنوان خروجی بر میگردانیم.     
</div>
</br>



## تابع creat
![image](https://user-images.githubusercontent.com/79846870/119414696-7fcd1980-bc9c-11eb-9bcf-efe04a2940e1.png)


<div dir='rtl' style='text-align:right'>
 
   به صورت تصادفی کپچا انتخاب شده سپس با توجه به اعداد به دست امده برای هر یک در تصویر پیکسل مورد نظر را رسم می کنیم  
  
</div>
</br>

```

captcha_numbers = [ round(rand(1, count) * 10) - 1 ];
captcha_numbers = uint8(captcha_numbers);

captcha_image = zeros(size(alphabet(:,:,1)));
captcha_image = alphabet(:,:,1);


for i = 2 : count
    if captcha_numbers(1,i) == 0
        captcha_numbers(1,i) = 1;
    end
    
	captcha_image = [ captcha_image alphabet(:,:,captcha_numbers(1,i)) ];
    
end
out = captcha_image;

```

## تابع rotate

![image](https://user-images.githubusercontent.com/79846870/119415288-c66f4380-bc9d-11eb-99a3-3d65509de1a3.png)

<div dir='rtl' style='text-align:right'>
 
  تصویر ایجاد شده با استفاده از این تابع مچرخانیم
</div>
</br>

![image](https://user-images.githubusercontent.com/79846870/119415963-1569a880-bc9f-11eb-964b-2f5e46c22262.png)
![image](https://user-images.githubusercontent.com/79846870/119416016-303c1d00-bc9f-11eb-9df8-d09494e96532.png)

