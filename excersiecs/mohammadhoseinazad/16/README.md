
### question Info :

###### 16. چشم های تصویر zelda.png را حذف کنید.

open the code ex16.m with mathlab press **run** button :rocket: 


<div dir = "rtl">
عکس را گرفته خاکستری کرده و مختصات محدوده برای حذف را گرفته و تغییر را شبیه محدوده بعدی داده شده اعمال می کند
</div>

```matlab
image=imread("D:\matlab\math\bin\benchmark\zelda.png");

 for i=250:280
     for j=310:350
        image(i,j)=image(i+30,j);
     end
 
 end
  for i=250:280
     for j=210:250
        image(i,j)=image(i,j+200);
     end
 
 end
 imshow(image)
```


![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/16/ex16.png)

