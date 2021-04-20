
### question Info :

###### 9. برنامه ای بنویسید که یک طول و عرض را مشخص کرده و سپس یک تصویر را crop کند.

open the code ex9.m with mathlab press **run** button :rocket: 

<div dir = "rtl">
تعیین طول و عرض
</div>

```matlab
x=input('enter x value for cutting=');
y=input('enter y value for cutting=');
```

<div dir = "rtl">
بریدن عکس و نمایش آن
</div>

```matlab
croppedImage = imcrop(image, [0, 0, x, y]);
imshow(croppedImage);
```

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/9/ex9.png)
