<div dir="rtl">
### جواب سوال1 :
</div>

```
m= input('arz ra vared konid=');
n= input('tul ra vared konid=');
a=1;

for i=1:1:m
    
    for j=1:1:n
       
          if a==0
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1])
            a=1;
        else
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0])
            a=0;
        end
        
    end
   
    * if rem(j,2)==0
            if a==0
            a=1;
            else
            a=0;
            end
        end
     
end
```

<div dir="rtl">
#### *: در صورتی که تعداد ستون ها فرد باشند، خروجی الگوریتم به این صورت خواهد بود که هر ستون یک رنگ دارد. برای رفع این مشکل، ازین شرط استفاده می کنیم که اگر به سطر زوج بعدی رسیدیم، مقدار  a را تغییر دهد تا رنگ خانه اول تغییر کند
</div>
 
 <div dir="rtl">
####خروجی کد به صورت زیر است : 
</div>

![khorooji](02472.jpg)

#------------------------------------------------------------------------------------------------------------------

<div dir="rtl">
جواب سوال 2:
</div>

```
A=zeros(1000,1000);
r =input('shoaa ra vared konid='); %radius
x=input('x markaze dayere ra vared konid=');
y=input('y markaze dayere ra vared konid=');
m = {x,y}; %midpoint
A(m{:})=1;
B = bwdist(A) <= r;
imshow(B)
```

<div dir="rtl">
این قطعه کد، شعاع و مختصات مرکز دایره را دریافت می کند و آن را در یک تصویر 1000 در 1000 رسم می کند. تصویر خروجی به شکل زیر است: 
</div>

![khorooji](02479.jpg)

#------------------------------------------------------------------------------------------------------------------

<div dir="rtl">
جواب سوال 3:
</div>

```
input=imread('C:\Users\PC\Desktop\1.jpg');
subplot(1,2,1), imshow(input), title('RGB Scale image');
[x,y,~] = size(input);

for i = 1:1:x
   for j = 1:1:y
      output(i,j) = 0.40*input(i,j,1) + 0.50*input(i,j,2) + 0.30*input(i,j,3);
   end
end

subplot(1,2,2), imshow(output), title('Gray Scale  image')
```

<div dir="rtl">
خروجی کد برنامه بالا به صورت زیر است:
</div>

![khorooji](02481.jpg)

#------------------------------------------------------------------------------------------------------------------

<div dir="rtl">
جواب سوال 5:
    تصویر نیمی از یک کوزه را داریم و می خواهیم آن را کامل کنیم:
</div>

![koozeh](5.png)

```
title 'original image' 
% Flip left/right: 
Ir = flipdim(I,2); 
subplot(2,2,2) 
imshow(Ir)
title 'flipped image'
% Join the original and flipped images: 
IIr = horzcat(I,Ir); 
subplot(2,2,3:4) 
imshow(IIr)
title 'joined images'
```

![khorooji](02490.jpg)

#------------------------------------------------------------------------------------------------------------------

<div dir="rtl">
جواب سوال 6:
</div>

```
m= input('arz ra vared konid=');
n= input('tul ra vared konid=');
a=1;
if rem(m,2)==0 %baraye zamani ke andazeye arz adade zoj bashd
    for i=1:1:m
    a=a+1 
    for j=1:1:n
       
          if a==1
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0], 'linestyle','none')
          else if a==m
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
          else if rem(a,2)==0
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
          else if rem(a,2)==1
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0], 'linestyle','none')
                  end
              end
              end
        end
        
    end
   
     
    end
else if rem(m,2)==1 %baraye zamani ke andazeye arz adade fard bashd
        for i=1:1:m
         a=a+1 
         for j=1:1:n
         
          if a==1
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0], 'linestyle','none')
          else if a==m
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
            else if a==m-1
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
          else if rem(a,2)==0
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1], 'linestyle','none')
          else if rem(a,2)==1
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0], 'linestyle','none')
                  end
              end
              end
              end
          end
         end
        end
    end
   
     
end   
```

![khorooji](02492.jpg)

#------------------------------------------------------------------------------------------------------------------

<div dir="rtl">
جواب سوال 7:
    برای رسم مربع، یک صفحه 10 در 10 مشخص کرده ایم. حال برای تعیین مختصات x و y باید به این صورت عمل کنیم که یک گوشه از مربع را انتخاب کرده و برای پیمایش محور x پاد ساعت گرد حرکت کرده و مقدار x در گوشه های تصویر را یادداشت نماییم. برای y هم به همین صورت عمل می کنیم  
</div>

```
x=[2 8 8 2 2];
y=[2 2 8 8 2];
plot(x,y);
axis([0 10 0 10]);
```

![khorooji](7.1.jpg)

<div dir="rtl">
برای مستطیل هم به همین صورت عمل می کنیم:
</div>

```
x=[2 9 9 2 2];
y=[2 2 8 8 2];
plot(x,y);
axis([0 10 0 10]);
```

![khorooji](7.2.jpg)

<div dir="rtl">
برای لوزی، محدوده تصویرمان را بین -1 و 1 در نظر گرفتیم:
</div>

```
x=[-0.5 0 0.5 0 -0.5];
y=[0 -0.5 0 0.5 0];
plot(x,y);
axis([-1 1 -1 1]);
```

![khorooji](7.3.jpg)

<div dir="rtl">
برای مثلث نیز محدوده را بین -1 و 1 در نظر گرفتیم. از آنجایی که مثلث سه گوشه دارد، x و y آن 4 نقطه میگیرند.
</div>

```
x=[0 0.5 0 1];
y=[0 -0.5 0.5 1];
plot(x,y);
axis([-1 1 -1 1]);

```

![khorooji](7.4.jpg)

#------------------------------------------------------------------------------------------------------------------

<div dir="rtl">
جواب سوال 8:
    برای حل این سوال، از چرخش پیکسل به پیکسب استفاده کردیم، در این نوع چرخش برخی از مقادیر پیکسل ها تغییر می کنند به همین دلیل کیفیت  تصویر مانند اولش نخواهد بود.
    تصویر اصلی به صورت زیر است:
</div>

![voroodi](8.jpg)

```
clc;
clear;
x=imread('C:\Users\PC\Desktop\8.jpg');
x=imresize(x,[200 200]);
x3=double(x);
degree=input('daraje ra vared konid');
for i=1:400
for j=1:400
x1(i,j)=round((i-100).*cosd(degree)+(j-100).*sind(degree)+100);
x2(i,j)=round(-(i-100).*sind(degree)+(j-100).*cosd(degree)+100);
if(x1(i,j)<=200)&&(x1(i,j)>0)&&(x2(i,j)<=200)&&(x2(i,j)>0)
      a(i,j,:)=x3(x1(i,j),x2(i,j),:);
  end;
  end;
  end;
image(uint8(a));
imshow(a(i,j));
```

<div dir="rtl">
تصاویر پایین، به ترتیب چرخش های 45، 90، 120 و 180 هستند:
</div>

![khorooji](8.1.jpg)

![khorooji](8.2.jpg)

![khorooji](8.3.jpg)

![khorooji](8.4.jpg)

#------------------------------------------------------------------------------------------------------------------

<div dir="rtl">
جواب سوال 9:
    این برنامه، طول و عرض شروع برش را از ورودی دریافت می کند و با توجه به آن، تصویر برش خورده خروجی را نشان می دهد:
تصویر اصلی به صورت زیر است:
</div>

![khorooji](9.jpg)

```
keanu=imread('C:\Users\PC\Desktop\9.jpg');
disp('tul va raze tasvir ra baraye crop moshakhas konid:');
row_start=input('crop az che arzi shoroo shavad?');
row_end=input('crop dar che arzi tamam shavad?');
col_start=input('crop az che sotooni shoroo shavad?');
col_end=input('crop dar che arzi tamam shavad?');
%cropping image
cropped=keanu(row_start:row_end,col_start:col_end,:);
figure(1),imshow(keanu),title('axe asli');
figure(2),imshow(cropped),title('axe crop shode');
```
![khorooji](9.1.jpg)

#------------------------------------------------------------------------------------------------------------------

<div dir="rtl">
جواب سوال 11:
    ابتدا تصویر را دریافت و در صورت رنگی بودن، آن را به تصویر خاکستری تبدیل می کنیم
</div>

```
i=imread('C:\Users\PC\Desktop\11.jpg');  
i=rgb2gray(i);
b=0;w=255;  %farz bar in ast le meghdare pixel haye meshli barabare '0' va meghdare pixel haye sefid '255' bashad
img_with_noise= i; 
[m,n]=size(i); %bedast avardane size tasvir
x = randint(m,n,[0,255]);
%sakhte yek matrixe randome mxn ke ham size tasvire asli ast va meghdar bazi az pixel haye randomash meghdar 0 ya 255 migirand. 
img_with_noise(x <= b) = 0;  
 img_with_noise(x >=w) = 255;
imshow(img_with_noise) %namayeshe tasvir
```

<div dir="rtl">
نتیجه خروجی این کد برای چند تصویر خاکستری و رنگی به صورت زیر است:
</div>

![khorooji](02506.jpg)

![khorooji](02507.jpg)

![khorooji](11.2.jpg)
