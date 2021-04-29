> # Exercise 14
>رنگ های موجود در یکی از تصاویر benchmark را به انتخاب خودتان به safe color تبدیل کنید.
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

![image](https://user-images.githubusercontent.com/48456571/116530955-dd678380-a8f3-11eb-85f9-0c89980e7a91.png)
