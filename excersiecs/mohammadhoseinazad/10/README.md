
### question Info :

###### 10. بدون استفاده از دستوران متلب یک کپچای تصویری را بکشید؛ اعداد را با تابع عدد تصادفی ایجاد کنید و سپس با توجه به اعداد بدست آمده برای هر یک در تصویر پیکسل های مورد نظر را رسم کنید؛ تصویر باینری باشد و اعداد رنگ سفید و پیش زمینه رنگ مشکی داشته باشد.

open the code ex10.m with mathlab press **run** button :rocket: 

type 1 2 or 3 in the input box

<div dir = "rtl">
در ابتدا تعیین می کنید کپچا چند رقمی می خواهید
سپس عددی رندومی انتخاب شده و با تابع 
int2str
عکس مربوط به آن عدد فراخوانده شده و باینری و ری سایز شده و در لیست اعداد قرار میگرد 
در انتها لوپ یک لیست از اعداد داده برای کپچا و نمایش داده میشود
</div>

```
how_many = input('how many number does your captha want = ');
list=[];
for i=1:how_many 
    number=randi(9);
    m=imread("C:\Users\nmzis\OneDrive\Desktop\adad\"+int2str(number)+".png");
    m1=imbinarize(m,0.0001);
    m2=imresize(m1,[200,200]);
    list = [list; m2]; 

end
imshow(list)

```


<div dir = "rtl">
ایرادات
فقط با 1 2 3 کار میکرد ایرادو نفهمیدم یا از لیست و اضافه کردن اعداد بهشه یا متلب چیزی داره که نمیدونم 
</div>



![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/10/ex10.png)

this code has some problem that i could not solve it till now