<div dir="rtl">
 
#### تمرین 7
#### اشکال هندسی مربع، مستطیل، لوزی، مثلث را بدون توابع متلب رسم کنید. <br />

***

### توضیحات کلی برنامه:

 در این برنامه تعدادی اشکال هندسی در یک تصویر خام 1500 در 1500 پیکسلی رسم شده است برای چند ضلعی ها از تابع نوشته شده جهت رسم خط که مختصات دو نقطه آن را می گیرد استفاده شده است و برای رسم دایره از برنامه نوشته شده در تمرین 2 استفاده شده است 

### توضیحات بخش های برنامه
***
 این قسمت باعث بسته شدن تمام پنجره ها ، ریست شدن تمام متغیر ها و پاک شدن کامند ویندو می گردد <br />

</div>

```matlab

close all         
clear all         
clc    

```
***
<div dir="rtl">
در این بخش تصویر خام به ابعاد 1500 در 1500 ایجاد میکند
 </div>
 
 ```matlab
 
pic=zeros(1500,1500);  

```
***
<div dir="rtl">
 
 در اين قسمت برنامه مستطيلي در نقطه شروع 100 و 150 به طول 300 و عرض 200 پيكسل رسم ميكند
 
 </div>
 
 ```matlab
 
% Draw a Rectangle in pos xpos and ypos :    
xpos=100;
ypos=150;
l=300;
w=200;
                                         
pic=draw_line(pic,xpos,ypos,xpos,(ypos+l));
pic=draw_line(pic,xpos+w,ypos,xpos+w,ypos+l);
pic=draw_line(pic,xpos,ypos,xpos+w,ypos);
pic=draw_line(pic,xpos,ypos+l,xpos+w,ypos+l);

```
***
<div dir="rtl">
 
 در اين قسمت برنامه مربعی در نقطه شروع 100 و 650 به طول 200 و عرض 200 پيكسل رسم ميكند
 
 </div>
 
 ```matlab
                                          
% Draw a Square in pos xpos and ypos :
xpos=100;
ypos=650;
l=200;
pic=draw_line(pic,xpos,ypos,xpos,(ypos+l));
pic=draw_line(pic,xpos+l,ypos,xpos+l,ypos+l);
pic=draw_line(pic,xpos,ypos,xpos+l,ypos);
pic=draw_line(pic,xpos,ypos+l,xpos+l,ypos+l);

```
***
<div dir="rtl">
 
در این بخش توسط تابع رسم خط که در ادامه برنامه توضیح داده شده است خطی بین دو نقطه مشخص شده در برنامه رسم می کند
 </div>
 
 ```matlab
              
p1=[400 1000];
p2=[100 1400];
pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));   

```
***
<div dir="rtl">
 
در این بخش توسط سه نقطه داده شده که سه راس مثلث هستند و به کمک تابع فوق الذکر مثلث را رسم می کند
 </div>
 
 ```matlab

p1=[800 100]
p2=[700 400]
p3=[500 300]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p1(1),p1(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p2(1),p2(2));

```
***
<div dir="rtl">
 
در این بخش توسط چهار نقطه داده شده و به کمک تابع فوق الذکر لوزی را رسم می کند
 </div>
 
 ```matlab

p1=[700 600]
p2=[500 700]
p3=[700 800]
p4=[900 700]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p1(1),p1(2),p4(1),p4(2));
pic=draw_line(pic,p2(1),p2(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p4(1),p4(2));

```
***
<div dir="rtl">
 
در این بخش توسط پنج نقطه داده شده و به کمک تابع فوق الذکر پنج ضلعی را رسم می کند
 </div>
 
 ```matlab
 
p1=[900 1000]
p2=[700 900]
p3=[500 1150]
p4=[700 1400]
p5=[900 1300]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p2(1),p2(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p4(1),p4(2));
pic=draw_line(pic,p4(1),p4(2),p5(1),p5(2));
pic=draw_line(pic,p1(1),p1(2),p5(1),p5(2));

```
***
<div dir="rtl">
 
در این بخش توسط سه نقطه داده شده که سه راس مثلث هستند و به کمک تابع فوق الذکر مثلث را رسم می کند
 </div>
 
 ```matlab

p1=[1400 100]
p2=[1400 500]
p3=[1000 300]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p1(1),p1(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p2(1),p2(2));

```
***
<div dir="rtl">
 
در این بخش توسط چهار نقطه داده شده  و به کمک تابع فوق الذکر ذوزنقه را رسم می کند
 </div>
 
 ```matlab

p1=[1400 700]
p2=[1200 600]
p3=[1200 1000]
p4=[1400 900]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p1(1),p1(2),p4(1),p4(2));
pic=draw_line(pic,p2(1),p2(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p4(1),p4(2));

```
***
<div dir="rtl">
 
در این بخش دایره ای به شعاع 150 و در مختصات 1300 در 1300 رسم می کند.
 </div>
 
 ```matlab

r=150;
cx=1300;
cy=1300;
pic=draw_circle(pic,r,cx,cy); 


```
***

<div dir="rtl">
 
تابع ذیل مختصات دو نقطه را به عنوان ورودی و یک تصویر را دریافت میکند و با استفاده از فرمول خط راست
و محاسبه شیب خط ، خطی بین آن دو نقطه در تصویر مورد نظر رسم می کند و توسط جدید را به تابع اصلی باز می گرداند.
 
 </div>
 
 ```matlab

function pic=draw_line(pic,ax,ay,bx,by) 

```
***
<div dir="rtl">
 
در این قسمت مختصات داده شده به تابع را در دو متغیر ذخیره می کند.
 </div>
 
 ```matlab

apos=[ax ay];     
bpos=[bx by];    

```
***
<div dir="rtl">
 
در این بخش با توحه به اینکه خط در راستای محور افقی یا عمودی باشد و یا اینکه خط شیب مثبت و یا منفی داشته باشد
مختصات مقدار دهی پیکسل ها را جداگانه محاسبه کرده و ان را با رنگ سفید مقدار دهی میکند.
 </div>
 
 ```matlab

         if (apos(1)==bpos(1))   
             m=1;                 
             if (apos(2)>bpos(2)) 
                 pic(apos(1),bpos(2):apos(2))=1;  
             else
                 pic(apos(1),apos(2):bpos(2))=1; 
             end
         else
             m=(abs(bpos(2)-apos(2))/abs(bpos(1)-apos(1))); 
         end
if (apos(1)>bpos(1)) 
    if (bpos(2)<apos(2))
        m=m*-1;
    end    
    l=abs(apos(1)-bpos(1))
    for i=1:l     
         j=round(m*i);  
         ii=apos(1)-i; 
         jj=j+apos(2);  
         if (apos(1)==bpos(1)) 
             ii=apos(1);   
         end
         pic(ii,jj)=1;  
    end   
end  
                      
if (apos(1)<bpos(1))    
    l=abs(bpos(1)-apos(1))
    for i=1:l
         j=round(m*i);
         ii=bpos(1)-i;
         if (bpos(2)<apos(2))
             jj=bpos(2)+j;
         elseif (bpos(2)>apos(2))
             jj=bpos(2)-j;
         else
             jj=bpos(2);
         end 
         if (apos(1)==bpos(1))
             ii=apos(1);
         end    
         pic(ii,jj)=1;
    end   
end 
imshow(pic)

```
***
<div dir="rtl">
 
تابع ذیل مختصات دو نقطه و شعاع دایره را به عنوان ورودی از کاربر می گیرد و در محل آن نقطه دایره ای با شعاع مشخص شده رسم میکند
برای رسم دایره از برنامه تمرین سوال 2 استفاده شده است.
 </div>
 
 ```matlab


function pic=draw_circle(pic,r,cx,cy)

```
***
<div dir="rtl">
 
در این قسمت ابتدا تصویری خام به ابعاد 1500 در 1500 ایجاد می کند سپس با استفاده از فرمول مختصات قطبی دو کمان دایره را رسم می کند 
به جهت اینکه خطوط دایره پررنگ تر باشد هر کمان از دو سمت رسم شده است.
 </div>
 
 ```matlab
 
pic2=zeros(1500,1500); 

for i=1:r              
    y=round(sqrt((r^2)-(i^2))); 
    xx=r-y+1;                  
    yy=r+i;                     
    pic(xx,yy)=1;              
    pic(yy,xx)=1;                
    xx=(2*r)-xx;                
    pic(xx,yy)=1;                
    pic(yy,xx)=1;               
    yy=r-(yy-r)+1;             
    pic(xx,yy)=1;              
end 

```
***
<div dir="rtl">
 
در این قسمت پس از تکمیل نیم دایره در بخش بالا نیم دایره پایین رو از قرینه کردن نیم دایره قبلی ایجاد میکندو در نهایت دایره کامل شده
را به تصویری که تابع به عنوان ورودی دریافت کرده بود منتقل میکند
 </div>
 
 ```matlab
for i=1:r-1                    
    for j=1:2*r                 
        pic2(r-i,j)=pic2(r+i,j); 
    end
end    
for i=1:2*r                     
    for j=1:2*r                 
        pic(cx-r+i,cy-r+j)=pic2(i,j); 
    end
end    

```
***
<div dir="rtl">
 
این بخش تصویر نهایی را نمایش می دهد.
 </div>
 
 ```matlab
   
imshow(pic)  
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/3c90faf383ed7f9d035c6f61340956814d2d1e38/excersiecs/alirezachaji/7/Exce07.png)
***
