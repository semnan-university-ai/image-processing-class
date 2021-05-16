> # Exercise 3
> برنامه ای بنویسید که بدون استفاده از توابع متلب تصاویر benchmark را به حالت خاکستری ببرد.
***
>CODE

<div dir="rtl">
  خواندن عکس و تغییر عکس به حالت خاکستری و باینری کردن عکس خوانده شده.
</div>

```ruby
img = imread('airplane.png');
grayimg = rgb2gray(img);
bwimg = im2bw(img);
```

<div dir="rtl">
با آستانه 0.5 درصد و 0.7 درصد  
</div>

```ruby
bwimg2 = im2bw(img,0.5);
bwimg3 = im2bw(img,0.7);
```

<div dir="rtl">
  نمایش تصاویر با ظاهر های متفاوت
</div>

```ruby
subplot(2,3,1); imshow(img);
subplot(2,3,2); imshow(grayimg);
subplot(2,3,3); imshow(bwimg);
subplot(2,3,4); imshow(bwimg2);
subplot(2,3,5); imshow(bwimg3);
```

![3](https://user-images.githubusercontent.com/57560004/116737962-16dce380-aa07-11eb-8430-c96da3478106.jpg)

***
