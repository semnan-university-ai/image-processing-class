> # Exercise 1
 
***
>CODE
>
مقدار طول و عرض و اندازه مربع ها رو از ورودی دریافت می کنیم
***
```ruby
a=input('tool ra vared kon :   ')

b=input('arz ra vared kon :   ')

c=input('andazeye morabbaha vared kon :   ')
```

یک ماتریس  با درایه های یک به اندازه طول ضربدر اندازه مربع و عرض ضربدر اندازه مربع ایجاد می کنیم
```ruby
w=ones(a*c,b*c);
```
این حلقه ستون های فرد صفحه شطرنجی را ایجاد می کند
```ruby
for i=1:a*c
    if (mod(i,2*c)==1)
        for j=1:b*c
            if (mod(j,2*c)==1)
            w(i:(i+(c-1)),j:(j+(c-1)))=0;
            end
        end
    end
end
```
این حلقه ستون های زوج صفحه شطرنجی را ایجاد می کند
```ruby
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
```
***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/1/soal1.jpg)


 
 
 
