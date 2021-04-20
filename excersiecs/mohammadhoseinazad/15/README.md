
### question Info :

###### 15. ابتدا تصویر pool.png را به grayscale تبدیل کنید و سپس توپ زرد را از تصویر حذف کنید

open the code ex15.m with mathlab press **run** button :rocket: 


<div dir = "rtl">
عکس را گرفته خاکستری کرده و مختصات محدوده برای حذف را گرفته و تغییر را شبیه محدوده بعدی داده شده اعمال می کند
</div>

```matlab
image=imread("C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\pool.png");
subplot(1,2,1), imshow(image);

image=rgb2gray(image);
%tayine mahdude
for i=230:350
    for j=350:470
        image(i,j)=image(i-1,j);
    end
end
subplot(1,2,2), imshow(image)
%imshow(image)
```

با تشکر از @https://github.com/alirezachaji
improved code of (https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/alirezachaji/14/Exce14.m)

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/15/ex15.png)

