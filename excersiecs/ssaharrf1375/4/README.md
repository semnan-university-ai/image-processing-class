
> # Exercise 4
> یک تصویر مربعی 500 * 500 ایجاد کنید که شامل بخش گوشه ی سمت راست و پایین تصاویر بنچ مارک ها باشد؛ از هر تصویر یک مربع 100 * 100 جدا کنید.
***
>CODE

<div dir="rtl">
خواندن تصاویر مختلف با پسوند های متفاوت
</div>

```ruby
imagepath = "C:\Program Files\Polyspace\R2019b\bin\img";
image = ones(500, 500, 3,'uint8');
pngf = dir(imagepath+'*.png');
tiff = dir(imagepath+'*.tif');
bmpf = dir(imagepath+'*.bmp');
imagefiles = [pngf;tiff;bmpf];
```

<div dir="rtl">
خواندن گوشه سمت گوشه سمت راست پایین از تصاویر خوانده شده و قرار دادن آن ها کنار هم
</div>

```ruby
for i=1:25
   cimage = imread(imagepath+imagefiles(i).name);
   [x_size,y_size,z_size]=size(cimage);
   image_cut=cimage(x_size-100:x_size,y_size-100:y_size,:);
   if z_size==1
       image_cut=cat(3,image_cut,image_cut,image_cut);
   end
   m=mood(i-1,5)*100;di=fix((i-1)/5)*100;
   image(di+1:di+101,m+1:m+101,:)=image_cut(1:101,1:101,:);
end
```

<div dir="rtl">
خواندن تصویر کلی
</div>

```ruby
imshow(image);
```
![4](https://user-images.githubusercontent.com/57560004/116738760-1db82600-aa08-11eb-8a76-833ff18d0a26.jpg)

***
