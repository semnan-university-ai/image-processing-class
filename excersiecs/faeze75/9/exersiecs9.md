># Exercise 9

***
>CODE

```ruby
image=imread('lena.png');
imshow(image);
x=input('Enter x of position: ');           
y=input('Enter y of position: ');
l=input('Enter Width of cropping area: ');
w=input('Enter length of cropping area: ');
s=size(image);
crop=zeros(1,2);
for i=1:l
    for j=1:w
        
        crop(j,i,1:s(3))=image(x+j,y+i,1:s(3));    %از مختصاتی که کاربر مشخص کرده به اندازه طول و عرض تصویر خروجی که باز  هم کاربر مشخص کرده   از تصویر اصلی پیکسل هارا خوانده و در داخل ماتریس جدیدی که ساختیم میریزیم

    end
end

Icrop=uint8(crop);
figure,
imshow(Icrop);

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/9/Screenshot%20(16).png)

***
<div dir="rtl">
توضیحات برنامه <br />
برنامه  در ابتدا مختصات مورد نظر و مقدار طول و عرض را از کاربر گرفته و سپس از مکان مورد نظر برش را انجام میدهد
</div>

