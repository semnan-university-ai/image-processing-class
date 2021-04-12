
مقدار طول و عرض و اندازه مربع ها رو از ورودی دریافت می کنیم

a=input('tool ra vared kon :   ')

b=input('arz ra vared kon :   ')

c=input('andazeye morabbaha vared kon :   ')

یک ماتریس  با درایه های یک به اندازه طول ضربدر اندازه مربع و عرض ضربدر اندازه مربع ایجاد می کنیم

w=ones(a*c,b*c);

این حلقه ستون های فرد صفحه شطرنجی را ایجاد می کند

for i=1:a*c
    if (mod(i,2*c)==1)
        for j=1:b*c
            if (mod(j,2*c)==1)
            w(i:(i+(c-1)),j:(j+(c-1)))=0;
            end
        end
    end
end

این حلقه ستون های زوج صفحه شطرنجی را ایجاد می کند

for i=2:a*c
    if (mod((i),(2*c))==(c+1))
        for j=2:b*c
            if (mod(j,(2*c))==(c+1))
            w(i:(i+(c-1)),j:(j+(c-1)))=0;
            end
        end
    end
end
    
uint8(w);
 imshow(w)
 
 
 عکس موجود در فایل ها مربوط به طول 12 و عرض 10 و اندازه مربع 6 می باشد
