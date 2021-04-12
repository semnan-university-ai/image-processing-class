ایجاد نویز فلفل  نمکی با تولید اعداد رندوم به اندازه طول  عرض و تصویر و سفید و سیاه کردن پیکسل های انتخاب شده.

در اینجا مقدار نویز قابل تغییر می باشد(m)


image=imread('C:\Users\as\Downloads\boat.png');
a=size(image);
for m=1:4000

تولید اعداد رندوم برای مشخص شدن طول و عرض پیکسل تغییر یافته

    i=randi(a(1));
    j=randi(a(2));
    image(i,j)=0;
end
for m=1:4000
    i=randi(a(1));
    j=randi(a(2));
    image(i,j)=255;
end

imshow(image);
    
