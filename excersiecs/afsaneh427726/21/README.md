
> # Exercise 21
>RGB ---> safe RGB color 
***
>CODE
 <div dir="rtl">
>کانال های رنگی را جدا کرده 
 </div>
 

```ruby
 
clc;
clear data;
clear all;
image=imread('C:\Users\as\Downloads\pool.png');
image=imresize(image,[400,500]);
a=image(:,:,1);
b=image(:,:,2);
c=image(:,:,3);
```
 <div dir="rtl">
 
مقدار پیکسل های 0-51 به مقدار 0و51-102به 51 و102-153به 102و153-204به153و204-255به204تغییر می یابد
 </div>

```ruby
for i=1:400
    for j=1:500
        if ((a(i,j)>0)&& (a(i,j)<51))
            a(i,j)=0;
        end
        if ((a(i,j)>51)&& (a(i,j)<102))
            a(i,j)=51;
        end
        if ((a(i,j)>102)&& (a(i,j)<153))
            a(i,j)=102;
        end
        if ((a(i,j)>153)&& (a(i,j)<204))
            a(i,j)=153;
        end
        if ((a(i,j)>204)&& (a(i,j)<255))
            a(i,j)=204;
        end
    end
end
for i=1:400
    for j=1:500
        if ((b(i,j)>0)&& (b(i,j)<51))
            b(i,j)=0;
        end
        if ((b(i,j)>51)&& (b(i,j)<102))
            b(i,j)=51;
        end
        if ((b(i,j)>102)&& (b(i,j)<153))
            b(i,j)=102;
        end
        if ((b(i,j)>153)&& (b(i,j)<204))
            b(i,j)=153;
        end
        if ((b(i,j)>204)&& (b(i,j)<255))
            b(i,j)=204;
        end
    end
end
for i=1:400
    for j=1:500
        if ((c(i,j)>0)&& (c(i,j)<51))
            c(i,j)=0;
        end
        if ((c(i,j)>51)&& (c(i,j)<102))
            c(i,j)=51;
        end
        if ((c(i,j)>102)&& (c(i,j)<153))
            c(i,j)=102;
        end
        if ((c(i,j)>153)&& (c(i,j)<204))
            c(i,j)=153;
        end
        if ((c(i,j)>204)&& (c(i,j)<255))
            c(i,j)=204;
        end
    end
end
image(:,:,1)=a;
image(:,:,2)=b;
image(:,:,3)=c;
imshow(image);

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/21/1.jpg)
***

