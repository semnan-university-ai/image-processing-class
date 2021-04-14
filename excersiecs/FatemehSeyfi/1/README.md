
<div dir = "rtl">
    <h1> تمرین اول </h1><br />
  برنامه ای بنویسید که با دریافت یک طول و عرض به عنوان مقدار طول و عرض تصویر یک صفحه ی شطرنج ایجاد کنید 
  
</div>

<div dir="rtl">

 دریافت طول و عرض صفحه شطرنجی
</div>
m=input("please enter width:");
n=input ("please enter length:");
<div dir="rtl">

  در نهایت با پیمایش کل صفحه خانه هایی که مقدار صفر داشته باشند با رنگ سیاه و خانه های با مقدار یک را با رنگ سفید ایجاد میکنیم

</div>
a=chessboard(m,n);
imshow(a);
function[a]= chessboard(m,n)
for i=1:1:m
    for j=1:1:n
        if mod((i+j),2)==0
            a(i,j)=0;
        else
            a(i,j)=255;
        end
       
    end
        
end

end
![image](https://user-images.githubusercontent.com/blob/main/excersiecs/FatemehSeyfi/1/q1.png)
