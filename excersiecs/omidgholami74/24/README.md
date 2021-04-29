
> # Exercise 24
>کانال رنگی قرمز تصویر watch.png را با کانال رنگی قرمز تصویر pool.png جا به جا کنید و خروجی هر دو را نمایش دهید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;

imageList =dir('nature/*.png');

for k =1:12
        name =imageList(k).name;
        image=imread(name);
        image=rgb2gray(image);
        subplot(6,2,k)
        imhist(image);
        
end
```
****
![image](https://user-images.githubusercontent.com/48456571/116563033-ecacf800-a918-11eb-878d-b6b676753e86.png)

