<div dir = "ltr">
    
```
address = 'benchmark\airplane.png';
input_im = imread(address);
im = rgb2gray(input_im);

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
mean_im = round(mean(mean(im)));
mean_noise = round(mean(mean(noise_im)));
mean_avg = round(mean(mean(avg_im)));
mean_med = round(mean(mean(med_im)));

%show
display(mean_im);
display(mean_noise);
display(mean_avg);
display(mean_med);

%show
subplot(2,2,1);
imshow(im);title('main image');

subplot(2,2,2);
imshow(noise_im);title('noise image');

subplot(2,2,3);
imshow(avg_im);title('mean filter');

subplot(2,2,4);
imshow(med_im);title('median filter');

```
</div>


<div dir = "rtl">
  بعد از خواندن تصویر به کمک کد برنامه 11 تصویر نویز دار ایجاد می شود
  برای اعمال فیلتر ها باید مربع سه در سه شکل گیرد بدین منظور از 4 متغیر زیر کمک گرفته شد :
  
  rmin :
  
  این متغیر سطر بالایی شبکه که برابر بیشینه یکی کمتر از سطر فعلی یا 1 است می باشد
  
  rmax :
  
  این متغیر سطر پایینی شبکه را که برابر کمینه آخرین سطر یا یکی بیشتر از سطر فعلی می باشد

  cmin , cmax نیز برای محدوده ستون شبکه استفاده می گردد
  
  در گام بعدی شبکه از تصویر نویز دار جدا می شود
  
  سپس فیلتر اعمال می شود
  
  تصویر اصلی :
  
  ![airplane](https://user-images.githubusercontent.com/80279784/113270493-c468b400-92ee-11eb-88c0-08d30defa062.png)

  تصویر خروجی با خرابی 10 درصد و اعمال فیلتر ها :
  
  ![image](https://user-images.githubusercontent.com/80279784/113270627-eeba7180-92ee-11eb-96af-c738f16493dc.png)

  میانگین تصیویر ها :
  
  ![image](https://user-images.githubusercontent.com/80279784/113312238-55578380-931f-11eb-8f22-def53240b550.png)

  
</div>
