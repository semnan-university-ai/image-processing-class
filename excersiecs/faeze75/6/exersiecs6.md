># Exercise 6

***
>CODE

```ruby
clc;
clear data;
clear all;

image=zeros(512);
s=1
m=0
for i=0:32
    image(s:s+15,:)=m;
    s=s+16;
    m=m+8;
    
end
image=uint8(image);
imshow(image)


```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/6/Screenshot%20(9).png)

<div dir="rtl">
توضیحات برنامه <br />
یک ماتریس به ابعاد512*512 میسازیم و سپسس سطرهای ماتریس را به 32 لایه تقسیم میکنیم و مقدار دهی میکنیم  
</div>

