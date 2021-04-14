
> # Exercise 18
> سفید کردن صفحه سفید ساعت
***
>CODE

```ruby

image=imread('C:\Users\as\Downloads\watch.png');
```
ابتدا کانال های رنگی تصویر راجدا گرده
```ruby
R = image(:, :, 1);
G = image(:, :, 2);
B = image(:, :, 3);
```
با استفاده از دستور زیر مختصات صفحه ساعت را تعیین کرده
```ruby
imtool(image);

```
مقدار پیکسل های مربوط به رنگ صفحه ساعت را سفید می کنیم
```ruby
k=0;
for j=333:694
    for i=295:586
        if (R(i,j)< 100) &&(R(i,j)> 81) && (abs((G(i,j)-B(i,j)))< 2) 
            image(i,j,1:3) = 255;
       end
       
  ```    
     مقدار پیکسل های مربوط به شماره های ساعت را سفید می کنیم
  ```ruby      
        if (R(i,j)< 15) 
            image(i,j,1:3) = 255;
       end
        end
    end
    
imshow(image);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/18/18.jpg)
***


