<div dir = "ltr">
    
```
start_i = input('the i of the top = ');
start_j = input('the j of the top = ');
height = input('heigh = ');

image = uint8(zeros(1000 , 1000));

where_i = start_i;

for k = 0 : height - 1
    first_j = start_j - k;
    last_j = start_j + k;
    
    for where_j = first_j : last_j
        image(where_i , where_j) = 255;
    end
    
    where_i = where_i + 1;
end

imshow(image);
```
</div>

<div dir = "rtl">
ابتدا از کاربر مختصات گوشه بالای مثلت به علاوه ارتفاع آن دریافت می شود
اول یک پیکسل
سپس پیکسل زیری به علاوه ی یک پیکسل چپ و راست
و ....
روشن می گردند
این ترتیب توسط حلقه ها کنترل می شود

خروجی برنامه :

![image](https://user-images.githubusercontent.com/80279784/113259382-4e5e5000-92e2-11eb-85a8-e68249cc084e.png)

</dir>
