
مقدار طول و عرض و اندازه مربع ها رو از ورودی دریافت می کنیم

b=input('tool ra vared kon :   ')

a=input('arz ra vared kon :   ')

c=input('andazeye morabbaha vared kon :   ')

یک ماتریس  با درایه های یک به اندازه طول ضربدر اندازه مربع و عرض ضربدر اندازه مربع ایجاد می کنیم
w=ones(a*c,b*c);

این حلقه ستون های فرد صفحه شطرنجی را ایجاد می کند

for m=1:round((b)/2)
    n=((m-1)*2*c)+1;
for i=n:(n+c-1)
    for j=0:(2*c):(a-1)*(c)
        w((j+1):(j+c),i)=0;
    end
end
end

این حلقه ستون های زوج صفحه شطرنجی را ایجاد می کند

for m=1:round((b-1)/2)
    n=((m*2*c)+1)-c;
for i=n:(n+c-1)
    for j=c:(2*c):(a-1)*(c)
        w((j+1):(j+c),i)=0;
    end
end
end
    
uint8(w);
 imshow(w)
 
 
 عکس موجود در فایل ها مربوط به طول 12 و عرض 10 و اندازه مربع 6 می باشد
