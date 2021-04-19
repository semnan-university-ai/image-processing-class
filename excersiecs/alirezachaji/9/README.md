<div dir="rtl">
 
#### تمرین 9
#### برنامه ای بنویسید که یک طول و عرض را مشخص کرده و سپس یک تصویر را کراپ کند. <br />

***

### توضیحات کلی برنامه:

  این برنامه مستطیلی با طول و عرض مشخص که از کاربر دریافت میکند را از تصویر اصلی کراپ کرده و آن را به عنوان یک تصویر جدید نمایش می دهد

### توضیحات بخش های برنامه
***

 این قسمت باعث بسته شدن تمام پنجره ها ، ریست شدن تمام متغیر ها و پاک شدن کامند ویندو می گردد <br />

</div>

```matlab

close all         
clear all         
clc    

```
***
<div dir="rtl">
 
در این بخش تصویر ورودی خوانده آن را درون متغیر می ریزد و سپس نمایش داده و ابعاد تصویر را درون بدست می اورد


</div>

```matlab

a=imread("benchmark\lena.png");      
imshow(a);                                     
n=size(a);        

```
***
<div dir="rtl">
 
در این بخش طول و عرض ابعادی که قرار است از تصویر کراپ شود را از کاربر دریافت کرده و با توجه به اینکه تصویر باید از مرکز کراپ شود مقدار پیکسل مورد نیاز از مرکز به طرفین تصویر را محاسبه می کند سپس توسط یک حلقه تو در تو بر روی پیکسل هایی از تصویر که در محد.ده کراپ هستند حرکت کرده و آنها را در تصویر جدیدی که ایجاد کرده ایم کپی می کند و نهایتا تصویر تولیدی را نمایش می دهد.


</div>

```matlab

l=input("Enter length of cropping area: ");     
w=input("Enter width of cropping area: ");      
x=ceil((n(1)-l)/2);                              
y=ceil((n(2)-w)/2);                              
pic=zeros(l,w);                                
for i=1:l                                      
    for j=1:w                                  
        pic(i,j,1:n(3))=a(x+i,y+j,1:n(3));      
    end
end
pic=uint8(pic);                                
figure('Name','Cropped Image');        
imshow(pic)                                    
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/2f41d1b4dcaf7e2e47a5336a258b560e66bca844/excersiecs/alirezachaji/9/Exce09.png)
***

