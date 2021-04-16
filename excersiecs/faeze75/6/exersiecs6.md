># Exercise 6

***
>CODE

```ruby
clc;
clear data;
clear all;
                            
image=zeros(512);          <div dir="rtl">  % میسازد یک ماتریس صفر به اندازه 512 </div>
s=1
m=0
for i=0:32                   <div dir="rtl"> % 32 لایه مجزا میسازیم
    image(s:s+15,:)=m;       <div dir="rtl"> % از هر سطی تا 15 سطر بعدش همگی مقدار m را میگیرند
    s=s+16;
    m=m+8;                  <div dir="rtl"> %چون 32  لایه داریم در تفاوت رنگ هر لایه با لایه زیرین خود به اندازه 8 درجه روشنتر میشود
    
end
image=uint8(image);        <div dir="rtl">  %تصویر را به فرمت unit8  تبدیل میکنیم و نمایش میدهیم
imshow(image)


```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/6/Screenshot%20(9).png)

<div dir="rtl">
توضیحات برنامه <br />
یک ماتریس به ابعاد512*512 میسازیم و سپسس سطرهای ماتریس را به 32 لایه تقسیم میکنیم و مقدار دهی میکنیم  
</div>

