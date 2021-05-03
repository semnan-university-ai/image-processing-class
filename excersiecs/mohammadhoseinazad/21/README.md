
### question Info 
21 رنگ های موجود در یکی از تصاویر benchmark را به انتخاب خودتان به safe color تبدیل کنید.

###### 
open the code ex21.m with mathlab press **run** button :rocket: 
<div dir = "rtl">
نمایش عکس از پوشه گیت
</div>

```matlab

img=imread("../../../benchmark/cat.png");

```

<div dir = "rtl">

</div>

```matlab
[X,Y,Z]=size(img);
for i= 1:X
    for j =1:Y
        for k=1:Z
            imgcopy(i,j,k)=fix(img(i,j,k)/61)*41;
        end
    end
end

```



![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/21/21.png)

