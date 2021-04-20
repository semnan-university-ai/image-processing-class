> # Exercise 3
> 3. Write a program that grays benchmark images without using MATLAB functions. 
***
>CODE

```ruby
close all          % تمام پنجره ها را می بندد
clear all          % سيستم مموري و مقادير تمام متغير ها را پاك ميكند
clc                % كامند ويندو را پاك مي كند
image=imread("benchmark/lena.png"); % تصوير را مي خواند
imshow(image)   % تصوير خوانده شده را نمايش مي دهد.
newimage=0.299*image(:,:,1)+0.587*image(:,:,2)+0.114*image(:,:,3); هر يك از كانال هاي تصوير را در ضريب مورد نظر ضرب نموده و در نهايت كانال هاي تصوير جديد را مقدار دهي ميكند
figure;            % يك فيگور جديد باز ميكند
imshow(newimage)   % تصوير جديد را نشان مي دهد
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/31b4e9ff9649852e898e3972eed32976e4ead0c8/excersiecs/alirezachaji/3/Exce03.png)
***
<div dir="rtl">
توضیحات کلی برنامه <br />
 در اين برنامه با توجه به فرمول رايج تبديل تصاوير رنگي به خاكستري پيكسل هاي تصوير جديد مقدار دهي ميشوند..
</div>
