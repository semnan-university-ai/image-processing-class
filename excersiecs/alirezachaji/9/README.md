> # Exercise 9
> Write a program that specifies a length and width and then crop an image. 
***
>CODE

Main Program
```ruby
 
close all                                      % تمام پنجره ها را می بندد
clear all                                      % سيستم مموري و مقادير تمام متغير ها را پاك ميكند
clc                                            % كامند ويندو را پاك مي كند

a=imread("benchmark\lena.png");                % تصویر ورودی را میخواند
a=uint8(a);                                    % تغییر می دهد uint8 نوع داده تصویر را به                   

imshow(a);                                     % تصویر را نمایش می دهد
n=size(a);                                     % ابعاد تصویر را بدست می آورد
l=input("Enter length of cropping area: ");    % طول قسمتی که قرار است کراپ شود را از کاربر دریافت میکند
w=input("Enter width of cropping area: ");     % عرض قسمتی که قرار است کراپ شود را از کاربر دریافت میکند
x=ceil((n(1)-l)/2);                            % چون قرار است از وسط تصویر کراپ شود لذا طول تقسیم بر 2 نموده و رند میکند 
y=ceil((n(2)-w)/2);                            % چون قرار است از وسط تصویر کراپ شود لذا عرض تقسیم بر 2 نموده و رند میکند
pic=zeros(l,w);                                % تصویر خام جدید به ابعاد وارد شده توسط کاربر ایجاد میکند
for i=1:l                                      % حلقه برا حرکت روی پیکسل های سطری
    for j=1:w                                  % حلقه برای حرکت روی پیکسل های ستونی
        pic(i,j,1:n(3))=a(x+i,y+j,1:n(3));     % قسمت مورد نظر کراپ را از تصویر اصلی کپی کرده و روی تصویر خام قرار می دهد
    end
end
pic=uint8(pic);                                % تغییر می دهد uint8 نوع داده تصویر را به
CurvaJV=figure('Name','Cropped Image');        % فیگور جدیدی برای نمایش تصویر جدید ایجاد میکند
imshow(pic)                                    % تصویر را نمایش می دهد
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/2f41d1b4dcaf7e2e47a5336a258b560e66bca844/excersiecs/alirezachaji/9/Exce09.png)
***
<div dir="rtl">
توضیحات کلی برنامه <br />
 این برنامه مستطیلی با طول و عرض مشخص که از کاربر دریافت میکند را از تصویر اصلی کراپ کرده و آن را به عنوان یک تصویر جدید نمایش می دهد
</div>
