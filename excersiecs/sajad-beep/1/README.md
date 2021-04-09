#موضوع پروژه :ایجاد صفحه شطرنجی
~~~
x=16;
y=16;
##یک صفحه 16*16
imagechess=zeros(x,y);
##پیمایش پیکسل ها
for i=1:x
    for j=1:y
    ##سطر و ستون زوج=سفید
        if (mod(j,2) ==0 && mod(i,2) ==0)
            imagechess(i,j)=255;
      ##ستون زوج سطر فرد=سیاه  
        elseif(mod(j,2) ==0 && mod(i,2) ==1)
            imagechess(i,j)=0;
       ##ستون فرد سطر زوج=سیاه
       elseif(mod(j,2) ==1 && mod(i,2) ==0)
            imagechess(i,j)=0;
         ##ستون فرد سطر فرد =سفید  
        elseif(mod(j,2) ==1 && mod(i,2) ==1)
            imagechess(i,j)=255;
        end
    end
end
figure,
imshow(imagechess);
~~~
![camelCase](excersiecs/sajad-beep/1/خروجی  سوال یک.PNG)
