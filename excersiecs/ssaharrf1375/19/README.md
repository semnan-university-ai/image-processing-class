> # Exercise 19
> با کمک روشی که در تمرین شماره ی 10 انجام داده اید این بار به جای اعداد از کلمات انگلیسی استفاده کنید و کپچا بسازید.
***
>CODE

<div dir="rtl">
یک تصویر 100 در 400 می سازیم
</div>

```ruby
pic=zeros(100,400);
```

 <div dir="rtl">
عکس های A تا H را که درون پوشه می باشد را به صورت رندوم از پوشه می خواند
 </div>

```ruby
for i=1:4
   s='A':'H';
   str=s(randi(numel(s)));
   add="letters\"+str+".png";
   a=imread(add);
```

<div dir="rtl">
همان طور که 4 عدد تصاوفی انتخاب می شدند اکنون به جای اعداد حروف در کنار یکدیگر قرار می گیرند
 </div>

```ruby
for r=1:100
       for k=1:100
           c=(i-1)*100+k;
           pic(r,c)=(255-a(r,k));
       end
   end    
end 
```

<div dir="rtl">
بعد از آن تصویر را باینری کرده و آن را نمایش می دهد
 </div>

```ruby
figure;
pic=imbinarize(pic);
imshow(pic);
```

![تمرین 1 سوال 19](https://user-images.githubusercontent.com/57560004/116999086-6156ac80-acf4-11eb-98df-6a09702dec8d.png)

***
