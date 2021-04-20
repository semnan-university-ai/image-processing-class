<div dir = "ltr">
    
```
address = 'benchmark\airplane.png';
input_im = imread(address);
im = rgb2gray(input_im);
row = size(im , 1);
col = size(im , 2);
si = row * col;
percent = input('percent = ');
choose = round((si * percent) / 100);
for i = 1 : choose
    x = randi([1 row]);
    y = randi([1 col]);
    im(x,y) = 0;
end


address2 = 'benchmark\cat.png';
input_im = imread(address2);
im2 = rgb2gray(input_im);
row2 = size(im2 , 1);
col2 = size(im2 , 2);
si2 = row2 * col2;
percent2 = input('percent = ');
choose2 = round((si2 * percent2) / 100);
for i = 1 : choose2
    x = randi([1 row2]);
    y = randi([1 col2]);
    im2(x,y) = 0;
end

subplot(1,2,1)
imshow(im);title('airplane');

subplot(1,2,2)
imshow(im2);title('cat');

```
</div>


<div dir = "rtl">
  ابتدا تصویر وارد شده به خاکستری تبدیل می گردد
  سپس درصد خرابی تصویر از کاربر دریافت می شود
  به کمک درصد تعداد پیکسل هایی که باید تغییر کند پیدا می شود
  در نهایت پیکسلی که کاملا به صورت تصادفی انتخاب شده است به رنگ سیاه تغییر پیدا می کند
  
  تصویر هواپیما :
  
  ![airplane](https://user-images.githubusercontent.com/80279784/113267388-8b7b1000-92eb-11eb-8193-78e5bc7b172d.png)

  تصویر هواپیما با خرابی 10 درصد :
  
  ![image](https://user-images.githubusercontent.com/80279784/113267517-afd6ec80-92eb-11eb-88f2-8406059708f3.png)

  تصویر گربه :
  
  ![cat](https://user-images.githubusercontent.com/80279784/113267559-ba918180-92eb-11eb-9b15-035c85e8c5d5.png)

  تصویر گربه با خرابی 20 درصد :
  
  ![image](https://user-images.githubusercontent.com/80279784/113267608-cb41f780-92eb-11eb-9b95-f627182aaf86.png)

  هر دو تصویر در کنار یک دیگر :
  
  ![image](https://user-images.githubusercontent.com/80279784/113267662-dac14080-92eb-11eb-91ac-a3adbbeb7d5a.png)

</div>
