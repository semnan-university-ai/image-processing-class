<div dir = "ltr">
    
```
address = 'benchmark\mountain.png';
input_im = imread(address);
image = input_im;

copy_im = image;

row = size(image , 1);
col = size(image , 2);

for j = 1 : col
for i = 1 : row
value = image(i,j);
if value >= 200
copy_im(i,j) = 0;
end
if image(i+1 , j) < 200
break
end
end
end

imshow(copy_im);

```
</div>


<div dir = "rtl">

  پس ار خواندن تصویر با حرکت در هر ستون هر خانه ای که مقدار بالاتر از 200 داشته باشد سیاه می گردد

  اگر در هر ستون خانه ای وجود داشت که کمتر از 200 باشد برنامه به ستون بعدی حرکت می کند.

  تصویر ورودی :

  ![mountain](https://user-images.githubusercontent.com/80279784/113547870-e1a9c500-9603-11eb-8c4f-62034c31e7ad.png)

  تصویر خروجی :

  ![image](https://user-images.githubusercontent.com/80279784/113547951-fede9380-9603-11eb-9422-9372a904f564.png)

  با تشکر از راهنمایی آقای محمد طاهر طاهران پور در حل این سوال .

</div>
```
