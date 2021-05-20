# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : afsaneh bagheri
* github id : afsaneh427726
* Email :afsane_bagheri1370@yahoo.com
* Type : roozaneh

> # Final Project
***





>CODE
>Main
```ruby
clc;
close all;
clear;
```
 <div dir="rtl">
ابتدای اندازه سایز تصویر را از ورودی دریافت می کنیم.
 </div>
 
 ```ruby
width = input('vared kon tool tasvir ra:');
height = input('vared kon arz tasvir ra:');

mkdir 'captcha'
for i=1 :150
```
<div dir="rtl">
 تعداد حروف کپچابه صورت رندوم انتخاب می شود. 
 </div>
 
 ```ruby
 alphabet_count=randi([4,6]);     
k=zeros(height ,width);
```
<div dir="rtl">
فراخوانی تابع زیر به منظور تنظیم کردن اندازه حروف برای جلوگیری از کشیده شدن حروف 
 </div>
 
 ```ruby
[a h]=hgh(alphabet_count,width,height);
captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
captcha_alphabet = uint8(captcha_alphabet);
```
<div dir="rtl">
  تنظیم کردن سایز تصویر و فراخوانی تابع برای تولید عکس کپچا
   </div>
 
 ```ruby
captcha_image=img(alphabet_count,captcha_alphabet);
 captcha_image = imresize(captcha_image, [h width]);
 k(a+1:a+h,:)=captcha_image;

 k=im2bw(k, 0.3);
 imshow(k);
 ```

<div dir="rtl">
  ذخیره تصوایر به دوصورت می تواند انجام شود
  1:با حروف اصلی کپچای داخل تصویر
  2:با اعداد داخل حلقه 
 </div>
 
 ```ruby
% alpha=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
ocr_result=ocr(k);
recognizedText =ocr_result.Text;
%  orginal_text=alpha(captcha_alphabet);
 image_name=strcat(num2str(i),'.png');
%  image_name=strcat(num2str(orginal_text),'.png');
imwrite(k,image_name);
movefile(image_name,'captcha');
 ```

<div dir="rtl">
  ذخیره نام فایل  به صورت حروف اصلی کپچا و خروجی تابع در فایل اکسل  
 </div>
 
 ```ruby

%  A = {(recognizedText),(orginal_text)};
A = {(recognizedText),(image_name)};
sheet = 1;
xlRange = strcat('A',num2str(i+1));
xlswrite('result.xls',A,sheet,xlRange)
end

```
<div dir="rtl">
در این تابع ابتدا هر حرف از داخل تابع فراخوانی می شود و   به داخل تابع چرخش رفته  و سپس  بعد از اتمام به صورت رندوم انواع نویز هاروی کپچا اعمال می شود 
 </div>
 
 ```ruby
function [image] = img (a,b)
 image = zeros(0);
for i = 1 : a
    if b(1,i) < 1
        b(1,i) = 1;
    end
    if b(1,i) > 26
        b(1,i) = 26;
    end    
    image=[image rotate(ch(b(1,i)))];
end
m=randi(4);    
    if m==1
        h = ones(3,3) / 9;
        image = imfilter(image,h);
    end 
    if  m==2
        image = imnoise(image,'salt & pepper',0.02);
    end  
    if  m==3
        image= imnoise(image,'speckle',3);
    end 
    if m==4
        image(16,1:i*25)=255;
    end

end
```
<div dir="rtl">
در این تابع هر حرف که به صورت رندوم در برنامه اصلی انتخاب شود تصویر آن بازگردانده می شود.
</div>
 
 ```ruby

function [a] = ch(m)
alphabet(:,:,1) = dlmread('C:\Users\as\Desktop\alphabet\A.txt');
.
.
alphabet(:,:,26) = dlmread('C:\Users\as\Desktop\alphabet\Z.txt');
alphabet = uint8(alphabet);
a=alphabet(:,:,m);

end
```
<div dir="rtl">
 دراین تابع به صورت رندوم هر کدام از تصاویر حروف چرخش پیدا می کند.
  
</div>
 
 ```ruby
 function [f]=rotate(a)
p=randi(6);
m=zeros(25);
    if p==1
      f= imrotate(a,25);
      f=imcrop(f,[5,5,24,24]);
      m(1:18,:)=f(4:21,:);      
    end
    if p==2
      f= imrotate(a,35);
      f=imcrop(f,[5,5,24,24]);
      m(8:25,:)=f(4:21,:);      
    end
    if p==3
      f= imrotate(a,45);
      f=imcrop(f,[5,5,24,24]);
      m(1:18,:)=f(4:21,:);     
    end
    if p==4 
       f= imrotate(a,60);       
       f=imcrop(f,[5,5,24,24]);
       m(8:25,:)=f(4:21,:);       
    end
    if p==5 
        f=a;       
       m(1:18,:)=a(4:21,:);      
    end
    
    if p==6 
       f= imrotate(a,15);
       f=imcrop(f,[5,5,24,24]);
       m(8:25,:)=f(4:21,:);
       
    end
end
```
<div dir="rtl">
 این تابع برای تغییر سایز عکس کپچا به منظور جلویری از کشیده شدن حروف می باشد
  
</div>
 
 ```ruby
function [a,h] = hgh (a_c,w1,h1)
w=a_c*25;
w2=round(w1/w)+1;
h=w2*25;
if h>h1
    h=h1;
end
 a=round(h1/2)-round(h/2);
end
 
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/19/kap19.jpg)
***


