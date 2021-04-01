<div dir="rtl">
با تشکر از آقای "سید احمد داوود موسوی" که فایل و توضیحات کامل این سوال رو در اختیار من گذاشتن
</div>
@arman-ariamehr

<div dir="rtl">
جواب سوال 12:
  یک تصویر را را از ورودی خوانده و با اعمال نویز فلفل & نمک، آن را نویز دار می کنیم. در ادامه فیلتر های میانه و میانگین را برای بهبود تصویر اعمال می کنیم و میانگین شان را محاسبه می کنیم. می توانید پس از اجرای کد، میانگین نویز فلفل& نمک و فیلتر های میانگین و میانه را در کامند ویندو مشاهده کنید
</div>

```
im1 = imread('C:\Users\PC\Desktop\keanu.jpeg');
im = rgb2gray(im1);
row = size(im , 1);
col = size(im , 2);

%salt & pepper
noise_im = im;

si = row * col;

percent = input('percent = ');
choose = round((si * percent) / 100);

for i = 1 : choose
    x = randi([1 row]);
    y = randi([1 col]);
    noise_im(x,y) = 0;
end

%mean filter
avg_im = uint8(zeros(row,col));

for i = 1 : row
    for j = 1 : col
        rmin = max(1 , i-1);
        rmax = min(row , i+1);
        cmin = max(1,j-1);
        cmax = min(col , j+1);
        temp = noise_im(rmin : rmax , cmin : cmax);
        avg_im(i,j) = mean(mean(temp));
    end
end

%median filter
med_im = uint8(zeros(row,col));

for i = 1 : row
    for j = 1 : col
        rmin = max(1 , i-1);
        rmax = min(row , i+1);
        cmin = max(1,j-1);
        cmax = min(col , j+1);
        temp = noise_im(rmin : rmax , cmin : cmax);
        med_im(i,j) = median(median(temp));
    end
end

%calculate
mean_noise = round(mean(mean(noise_im)));
mean_avg = round(mean(mean(avg_im)));
mean_med = round(mean(mean(med_im)));

%show
display(mean_noise);
display(mean_avg);
display(mean_med);

%show
subplot(2,2,1);
imshow(im1);title('تصویر اصلی');

subplot(2,2,2);
imshow(noise_im);title('نویز فلفل & نمک');

subplot(2,2,3);
imshow(avg_im);title('فیلتر میانگین');

subplot(2,2,4);
imshow(med_im);title('فیلتر میانه');
```
 
 <div dir="rtl">
خروجی کد به صورت زیر است : 
</div>

![khorooji](02578.jpg)

