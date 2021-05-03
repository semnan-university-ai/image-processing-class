
> # Exercise 19
>با کمک روشی که در تمرین شماره ی 10 انجام داده اید این بار به جای اعداد از کلمات انگلیسی استفاده کنید و کپچا بسازید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;



imageList =dir('alpha_eng/*.png'); % بارگزاری تمامی تصاویر اعداد حروف انگلیسی
blankImage=[]; % ساخت یک آرایه خالی یرای نمایش عکس نهایی
n=input("please insert Number of Characters") % انتخاب تعداد کاراکتر توسط کاربر
for k =1:n           % ایجاد حلقه برای بارگزاری تصاویر
    rand=randi(24);% ایجاد عدد رندم برای انتخاب حذوف انگلیسی
    deg=randi(180); % انتخاب یک زاویه رندوم برای چرخاندن حروف
    temp=zeros(100,100); % ساخت یک ماتریس صفر 100 در 100
        name =imageList(rand).name;% انتخاب تصاویر عدد ها بصورت رندوم
       image=imread(name); % بارگزاری تصویر
       image=rgb2gray(image); % تبدیل عکس به خاکستری
       
       image=e8_rotate(image,deg); % چرخش تصویر
       [w,h]=size(image); % دریافت طول و عرض تصویر
       temp(1:w,1:h) = image; % ریختن غکس چرخانده شده درون ماتریس صفر
       blankImage =cat(2,blankImage,temp); % چسباندن تصاویر یا همان آرایه ها بهم
end
imshow(blankImage);
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
![image](https://user-images.githubusercontent.com/48456571/113310193-37891f00-931d-11eb-939f-2b530b5bd3d0.png)
