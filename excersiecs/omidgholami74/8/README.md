> # Exercise 4
>بدون استفاده از توابع آماده ی متلب یک تصویر را با 45،90،120،180 درجه بچرخانید؛ در تصاویری که چرخش تصویر باعث خارج شدن از حالت مربعی می شود پیکسل های خالی را برابر رنگ مشکی قرار دهید و پیکسل های خارج شده از محدوده را نادیده بگیرید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;


deg=[45 90 120 180];% مقادیر چرخش هایی که میخواهیم روی عکس اعمال کنیم.
sizeDeg=size(deg);
for i=1:sizeDeg(2)
    figure;
    imshow(e8_rotate('benchmark/airplane.png',deg(i)));% نمایش عکس ها
end

```
****
rotate function
```ruby
function image_rotated = e8_rotate(A,deg)
%E8_FUN Summary of this function goes here
%   Detailed explanation goes here
%Find the midpoint
% path=strcat(name)
if(deg > 155)   
    midx = ceil((size(A,1))/2);%مشخص کردن وسط تصویر برای چرخش بیش از 155
    midy = ceil((size(A,2))/2);%مشخص کردن وسط تصویر برای چرخش بیش از 155
else
    midx = ceil((size(A,2))/2);%مشخص کردن وسط تصویر برای چرخش کمتر از 155
    midy = ceil((size(A,1))/2); %مشخص کردن وسط تصویر برای چرخش کمتر از 155
end

[y,x] = meshgrid(1:size(A,2), 1:size(A,1)); % ساخت یک ماتریس دو بعدی برای نمایش تصویر با دشتور meshgrid
[t,r] = cart2pol(x-midx,y-midy); % تبدیل مختصات کارتزین به قطبی
t1 = radtodeg(t)+deg;  % تیدیل رادیان به درجه 

%ندیل رادیان به درجه
t = degtorad(t1);

% تبدیل مختصات قطبی به کارتزین
[x,y] = pol2cart(t,r);

%افزودن نقطه وسط به مختصات جدید
tempx = round(x+midx);
tempy = round(y+midy);

if ( min(tempx(:)) < 0 )% اگر کمترین طول کوچکتر از صفر باشد یا منفی باشد
   
newx = max(tempx(:))+abs(min(tempx(:)))+1; % از قدر مطلق استفاده میکنیم
tempx = tempx+abs(min(tempx(:)))+1;
else
    newx = max(tempx(:));% در غیر اینصورت بیشترین عدد طول را به عنوان نقطه جدید قرار میدهیم
end

if( min(tempy( : )) < 0 )اگر کمترین عرض کوچکتر از صفر باشد یا منفی باشد
   
newy = max(tempy(:))+abs(min(tempy(:)))+1; % از قدر مطلق استفاده میکنیم
tempy = tempy+abs(min(tempy(:)))+1; % از قدر مطلق استفاده میکنیم
else
    newy = max(tempy(:)); % در غیر اینصورت بیشترین عدد طول را به عنوان نقطه جدید قرار میدهیم
end
tempy(tempy==0) = 1;
tempx(tempx==0) = 1;

C = uint8(zeros([newx newy])); % ماتریس صفر جدی زا به uint8 تیدیل میکنیم


for i = 1:size(A,1)
    for j = 1:size(A,2)
        C(tempx(i,j),tempy(i,j)) = A(i,j); %  حال به اندازه طول و عرض تصویر . مختصلا جدید را درون خروجی قرار کیدهیم
       
    end
  
end
Output = C; %
%جاهای خالی را با پیدا میکنیم
for i = 2:size(C,1)-1
    for j = 2:size(C,2)-1
       
        temp = C(i-1:i+1,j-1:j+1);
        if(temp(5)==0&&sum(temp(:))~=0)
            pt = find(temp~=0);
           
            [~,pos] = sort(abs(pt-5));
            Output(i,j) = temp(pt(pos(1)));
          
        end
       
    end
end
image_rotated=uint8(Output);
end
```
***
![image](https://user-images.githubusercontent.com/48456571/113296901-4668d500-930f-11eb-8221-55f1ee6436d6.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع چرخش عکس میدهد <br />
</div>
