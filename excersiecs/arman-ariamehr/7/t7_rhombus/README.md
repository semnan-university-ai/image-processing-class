<div dir = "ltr">
    
```
start_i = input('the i of the top = ');
start_j = input('the j of the top = ');
height = input('large heigh = ');

height = ceil(height / 2);

image = uint8(zeros(1000 , 1000));

where_i = start_i;
%up side
for k = 0 : height - 1
    first_j = start_j - k;
    last_j = start_j + k;
    
    for where_j = first_j : last_j
        image(where_i , where_j) = 255;
    end
    
    where_i = where_i + 1;
end
%down side
for k = height - 2 : -1 : 0
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
ابتدا مختصات گوشه بالا و ارتفاع بزرگ لوزی از کاربر دریافت میشود
لوزی در واقع ترکیب دو مثلث است
مثلثی که به سمت بالاست توسط الگوریتم مثبثی که بیان شد ترسیم می گردد
برای مثلث به سمت پایین هم به جای آنکه به چپ و راست مثلث اضافه  گردد این بار کم می گردد

خروجی برنامه :

![image](https://user-images.githubusercontent.com/80279784/113259998-02f87180-92e3-11eb-815d-03a8f8cb818d.png)

</div>
