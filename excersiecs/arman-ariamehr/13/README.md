<div dir = "ltr">
    
```
FilterSpec = {'*.jpg' ; '*.jpeg' ; '*.png' ; '*.PNG' ; '*.*'};
[name, path] = uigetfile(FilterSpec,'choose a file');
address = [path name];
input_im = imread(address);
if size(input_im , 3) == 3
    image = rgb2gray(input_im);
else
    image = input_im;
end
amount = input('amount of making noise picture : ');
chart = zeros(1,amount);
header = strings(1,amount);
for i = 1 : amount
    str = strcat('t' , num2str(i));
    header(1,i) = str;
end
for i = 1 : amount 
    percent = randi([1 100]) / 100;
    noise = imnoise(image , 'salt & pepper' , percent);
    avg = mean(mean(noise));
    chart(1,i) = avg;
end

xlswrite('result.xlsx' , header , 'Sheet1' ,'A1');
xlswrite('result.xlsx' , chart , 'Sheet1' , 'A2');

```
</div>



<div dir = "rtl">
  ابتدا تصویر به صورت گرافیکی دریافت و به خاکستری تبدیل می گردد
  در گام بعد از کاربر تعداد اعمال نویز را گرفته و به تعداد آن به تصویر نویز اعمال می کنیم
  میزان خرابی تصویر به صورت کاملا تصادفی انتخاب شده است.

  در آخر سر هم تمام داده ها در فایل result.xlsx ذخیره می گردد.


  تصویر نمونه :

  ![WhatsApp Image 2021-04-01 at 22 57 11](https://user-images.githubusercontent.com/80279784/113542947-99d27000-95fa-11eb-911c-7d895cdb7f5c.jpeg)

  با تشکر از خانم نسترن ملک برای در اختیار قرار دادن تصویر ورودی

</div>
```
