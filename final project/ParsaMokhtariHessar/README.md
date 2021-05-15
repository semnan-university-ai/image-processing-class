# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : Parsa Mokhtari Hessar
* github id : @ParsaMokhtariHessar
* Email : parsamokhtarihessar@gmail.com
* Type : Roozane

### تابع اصلی


<div dir="rtl">
 با پاک کردن صفحه از شلوغ شدن کمند ویندو جلو گیری می کند.
</div>

```
clc;
close all;
clear;
```

<div dir="rtl">
سیستم طراحی شده توسط جناب شکری برای خواندن کاراکتر ها زیاد قابل مقیاس دادن نبود برای همین سیستمی با استفاده از حلقه برای خواندن کاراکتر ها طراحی شد که مقیاس پذیری آن بیشتر است . بگفته برنامه نویسان حرفه ای هرگاه شما در کد نویسی خود کپی پیست زیاد انجام می دهید بهتر است روش خود را عوض کنید.
</div>



<div dir="rtl">
در این جا این خط کد کاراکتر ها را می گیرد و در یک آرایه بصورت خود کار ذخیره می کند
</div>


```
myFolder = '..\..\excersiecs\arman-ariamehr\19\alphabet\';
filePattern1 = fullfile(myFolder,'*.txt');
theFiles = dir(filePattern1);
alphabet = zeros(25,25,length(theFiles));
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);
    % Now do whatever you want with this file name,
    image = dlmread(fullFileName);    
    alphabet(:,:,k)=image(:,:);
end
```
<div dir="rtl">
برای جلوگیری از مشکلات مربوط به نوع داده های مختلف کد زیر کاراکتر ها را به اینتیجر هشت بیتی(uint8) تبدیل می کند.
</div>


```
alphabet = uint8(alphabet);
```

<div dir="rtl">
برای ساختن 150 کاراکتر کپچا حلقه زیر را مورد استفاده قرار می دهیم 
</div>

```
for p=1:150
```

<div dir="rtl">
تعداد کاراکتر های کپچا بصورت رندم عددی بین 2 تا 8 انتخاب می شود.
</div>

```
    alphabet_count = randi([2 8]);
```

<div dir="rtl">
برای حل مشکل ناخوانا بودن بر اثر تبدیل سایز ، تبدیل سایز را به ازای هر کاراکتر انجام می دهیم که در صورت زیاد بودن کاراکتر ها خوانا بودن آنها از دست نرود.
</div>

```
    %size per cell
    width = 100; %height per cell
    height = 100; % width per cell
```

<div dir="rtl">
به تعداد تعیین شده برای تعداد حروف کپچا عدد رندم بین 1 تا 26 تولید می کنیم که نماینده حروف انگلیسی می باشد
</div>

```
    captcha_alphabet = [randi([1 26],1,alphabet_count,'uint8');];
    captcha_alphabet = uint8(captcha_alphabet);
```

<div dir="rtl">
الگوریتم سر هم نمودن آقای شکری بدلیل بازگشتی بودن آن و استفاده از حالت قبلی کپچا از مرتبه O(n^2) بود ولی ما با از پیش تعیین نمودن متغییر آن را به O(n) کاهش دادیم. 
</div>


```
    %made your algorithem more efficeiet
```

<div dir="rtl">
سایز هر حرف گرفته می شود که شامل طول و عرض می باشد. 
</div>

```
    [Alphabet_Height,Alphabet_Width]=size(alphabet(:,:,1));
```

<div dir="rtl">
 از آنجایی که طول و عرض هر کاراکتر به ازای هر حرف گرفته می شود. ما برای متناسب تعیین نمودن سایز اینیشالایز(Initialize) کپچا عرض را ضرب در تعداد تعیین شده حروف کپچا می نماییم 
</div>


```
    captcha_image = zeros(Alphabet_Height,Alphabet_Width*alphabet_count);
```

<div dir="rtl">
به تعداد حروفی که باید در کپچای حال حاضر باشد بایستی کارکتر ها را سوار تصویر کپچای از قبل درست شده (در خط کد قبلی) بکنیم
</div>

```
    for i = 1 : alphabet_count
```

<div dir="rtl">
برای نویز دار کردن کپچا برای سخت تر شدن آن از تابع درست شده توسط خود بنده که حروف را دوران می دهد استفاده می کنیم.زاویه این تابع بصورت رندم انتخاب می شود.
</div>

```
        temp = Rotation(alphabet(:,:,captcha_alphabet(i)),randi([-45 45]));
```

<div dir="rtl">
همچنین در هر سلول خطوط رندم درست می کنیم برای مثال در کد زیر 6 خط رندم درست شده است که بعد از ریسایز کردن به خطوط نقطه چین زخیم در می آیند.
</div>

```
        temp = RandLine(temp,2,10,10,500,5);
```

<div dir="rtl">
پس از ایجاد تغییرات انجام شده کاراکتر نویز دار خود را سوار تصویر کپچا می کنیم.
</div>

```
        for x =1 : Alphabet_Width
            for y =1 : Alphabet_Height
                captcha_image(x,y+(i-1)*25) = temp(x,y);
            end
        end
    end
```

<div dir="rtl">
همچینین مقداری خطوط بیشتر پس از بوجود آمدن تصویر کپچا به تصویر بعنوان خطوط نویز کلی اضافه می کنیم.
</div>

```
    captcha_image = RandLine(captcha_image,2,10,10,500,5);
```

<div dir="rtl">
تصویر را باینری می کنیم تا حجم آن کمتر شود.
</div>

```
    captcha_image = imbinarize(captcha_image,0.3);
```

<div dir="rtl">
پس از باینری کردن تصویر آن را به سایز دلخواه از پیش تعیین شده می بریم. همانگونه که گفته شد  سایز دریافتی به ازای هر کارکتر است ، بنابراین باید عرض را ضرب در تعداد کاراکتر نماییم
</div>

```
    captcha_image = imresize(captcha_image, [height width*alphabet_count]);
```

<div dir="rtl">
پس از ریسایز شدن مقداری بیشتر خط رندم به تصویر می افزاییم تا خطوط رندم نازک هم داشته باشیم.
</div>

```
    captcha_image = RandLine(captcha_image,2,10,10,1500,5);
```

<div dir="rtl">
برای حتی سخت تر شدن کپچا شکل های رندم را نیز به آن می افزاییم.تابع این شکل ها با استفاده از تمارین قبلی ساخته شده و شامل دایره، لوزی،مربع،مستطیل و مثلث می باشد .همچنین برای نا خوانا نشدن کپچا هایی با حروف کم ناشی از بیش از حد بودن شکل های رندم در تصویر تعداد شکل های رندم را هم به تعداد کاراکتر های کپچا نسبت دادیم تا همه کپچا ها صرفه نظر از تعداد حروف از خوانا بودن یکسانی برخوردار باشند.
</div>

```
    captcha_image = RandomShapes(captcha_image,20,2*alphabet_count);
```

<div dir="rtl">
و برای تکمیل به آن مقداری نویز فلفل نمکی اضافه می کنیم.
</div>

```
    captcha_image = CustomSaltAndPepper(captcha_image,0.1,0.5);
```

<div dir="rtl">
بعد از آن یا می توانیم یا آن را نشان داده و یا تعدادی از آن را در جایی بخصوص ذخیره نماییم. 
</div>
    
```    
    %imshow(captcha_image);
    %imwrite(captcha_image,full,'PNG');    
end
```
<div dir="rtl">
و یا با OCR آن را آزمایش نماییم.
</div>

```
%ocr(captcha_image)

```
### تابع تست OCR

<div dir="rtl">
تمام کپچا های تولید شده را می خوانیم 
</div>

```
myFolder = 'OutPut\';
filePattern1 = fullfile(myFolder,'*.PNG');
theFiles = dir(filePattern1);
```

<div dir="rtl">
دو متغییر برای سنجش دقت OCR روی کپچا مقدار دهی اولیه می کنیم.
</div>

```
Tru=0;
Fals=0;
```

<div dir="rtl">
تمام فایل ها را یکی به یکی می خوانیم و آنها را برای پردازش آماده می کنیم.
</div>

```
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    [folder, baseFileNameNoExt, extension] = fileparts(fullFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);
    % Now do whatever you want with this file name,
```

<div dir="rtl">
تصویر را از فایل می خوانیم
</div>

```    
    image = imread(fullFileName);
```

<div dir="rtl">
تصویر را با استفاده از OCR می خوانیم
</div>

```
    ocrRead = ocr(image);
```

<div dir="rtl">
کارکتر های خوانده شده توسط OCR را استخراج می کنیم و بصورت آرایه ای از String ها در می آوریم.
</div>

```
    Read=string(ocrRead.Words);
```

<div dir="rtl">
برخی از String ها در دو خانه آرایه ذخیره شده اند باید آنها را به یک String تبدیل نمود .برای این کار از حلقه زیر و تابعstrcat استفاده می کنیم.
</div>

```
    eadf='';
    si=size(Read);
    for u=1:si
        eadf = eadf+strcat(Read(u));
    end
```

<div dir="rtl">
سپس استرینگ پردازش شده را با نام بدون اکستنشن عکس مقایسه می کنیم اگر برابر بود یک واحد به متغییر درست و اگر نابرابر یا خالی بود یک واحد به متغییر نا درست اضافه می شود.
</div>

```
    fi= baseFileNameNoExt;
    if size(eadf) == 0
        Fals=Fals+1;
    elseif eadf == fi
        Tru=Tru+1;
    else
        Fals=Fals+1;
    end
end

```
    
<div dir="rtl">
سپس تعداد درست ها، نادرست ها و درصد درست ها از تعداد کل را محاسبه کرده و نمایش می دهیم. 
</div>    

```
disp("True : "+Tru+", False : "+Fals+", Accuracy : %"+Tru/(Tru+Fals)*100);
```

<div dir="rtl">
برای تست درست عمل کردن این تستر کپچا 15 عدد کپچا بدون نویز تولید شده که در پوشهOutPutClean گذاشته شده و اعمال کردن آن دقت 80% برای OCRTest می دهد. 
</div>

True : 12, False : 3, Accuracy : %80

<div dir="rtl">
ولی در صورت اعمال نمودن نویز های گفته شده برای 150 خروجی دقت این تست صفر می شود.
</div>

True : 0, False : 150, Accuracy : %0

### توابع نویز استفاده شده

<div dir="rtl">
تمام توابع نویز استفاده شده توسط خود دانشجو انجام شده و یا از تمارینی که خود دانشجو انجام داده الهام گرفته شده و هیچ کدام کپی نشده!
</div>

### تابع نویز فلفل نمکی

<div dir="rtl">
این تابع بصورت مفصل در تمرین 11 توضیح داده شده است اینجا بصورت کلی توضیح داده می شود که :
</div>

<div dir="rtl">
این تابع عکسی را می گیرد دو عدد بین صفر و یک که نمایانگر نسبت کل تعداد پیکسل های تغییر داده شده به کل پیکسل ها و  نسبت پیکسل های تغییر داده شده سفید به کل پیکسل های تغییر داده شده را نیز دریافت می کند و نویز را به تصویر اعمال می کند.
</div>


```
function imageNoisy = CustomSaltAndPepper(image,a,b)
% create the noise --------------------------------------------------------
imageNoisy = image;
% a% pixels altered
% b% percent white pixels among all altered pixels
n = numel(imageNoisy(:,:));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
imageNoisy(idx1) = 1;
imageNoisy(idx2) = 0;
end
```

### ساختن خط رندم

<div dir="rtl">
 قبل از توضیح خط رندم بایستی تابعی را که یک خط برای ما رسم می کند را توضیح داد.
</div>


<div dir="rtl">
این کد با استفاده از معادله خط و یک حلقه؛ کل صفحه را پیمایش کرده و برای ما یک خط با ضرایبxوy و عرض از مبداb رسم می کند.
</div>

```
function image = Line(image,threshhold,x,y,b)
[width,height]=size(image);
        for i=1:width
            for j=1:height
                z = i*(x)+j*(y)-b; 
                if z <= 100+threshhold && z>=100-threshhold
                    if image == 255
                        image(i,j) = 0;                   
                    else
                        image(i,j) = 255 ;                  
                    end                   
                end         
            end   
        end
end
```

<div dir="rtl">
این تابع با استفاده از تابع خط تعداد خط های درخواست شده (n)را گرفته  و  ضرایب و عرض از مبدا را هم می گیرد اما آنها را برای هر چه رندم تر شدن نیز بصورت رندم تغییر می دهد. 
</div>


```
function image = RandLine(image,threshhold,x,y,b,n)

    for i=1:ceil(rand*n) 
        image=Line(image,threshhold,randi([-x x ]),randi([-y y ]),randi([-b b]));
    end 

end

```

### تابع دوران

<div dir="rtl">
این تابع نیز بصورت کامل در تمرین 8 دانشجو توضیح داده شده ولی در کل یک زاویه از ما گرفته و تصویر را به اندازه زاویه دوران می دهد. در تابع اصلی زاویه فراخوانی این تابع بصورت رندم انتخاب می شود که باعث می شود با زوایایی مختلف حروف دوران پیدا کنند و خواندن آنها سخت تر شود. 
</div>


```
function C = Rotation(img,angle)

[rowsi,colsi]= size(img); 

% put angle  in degrees

rads=2*pi*angle/360;  

%calculating array dimesions such that  rotated image gets fit in it exactly.
% we are using absolute so that we get  positve value in any case ie.,any quadrant.

 %rowsf=ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
 %colsf=ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));

 rowsf=rowsi;                      
 colsf=colsi;

% define an array withcalculated dimensionsand fill the array  with zeros ie.,black
C=uint8(zeros([rowsf colsf]));

%calculating center of original and final image
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);

midx=ceil((size(C,1))/2);
midy=ceil((size(C,2))/2);

% in this loop we calculate corresponding coordinates of pixel of A 
% for each pixel of C, and its intensity will be  assigned after checking
% weather it lie in the bound of A (original image)
for i=1:size(C,1)
    for j=1:size(C,2)                                                       

         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
              C(i,j,:)=img(x,y,:);  
         end

    end
end

end
```
### توابع شکل های رندم


<div dir="rtl">
این تابع رندم سازی های بسیار ی را نیاز دارد . از خود شکل گرفته تا مرکز آن ، اندازه آن . می توانیم بصورت دلخواه ضخامت یا تو خالی یا توپر بودن آن را نیز رندم سازی کنیم که دانشجو به علت بیش از حد پیچیده شدن از آن خودداری نموده.
</div>


<div dir="rtl">
.این تابع تصویر  و تعداد شکل های در خواستی و ماکزیمم شعاع یا ضلع آنها را می گیرد
</div>

```
function image = RandomShapes(image,NumberOfShapes,m)
```

<div dir="rtl">
تعداد کل شکل های رندم را برای دستور Switch مشخص می کند
</div>

```
NumberOfCases = 5;
```

<div dir="rtl">
شکل های انتخابی برای رسم شدن بصورت رندم انتخاب می شوند
</div>

```
Shapes = [randi([0 NumberOfCases],1,NumberOfShapes);];
```

<div dir="rtl">
سایز تصویر را می گیرد.
</div>

```
[width , height] = size(image);
```

<div dir="rtl">
شعاع  ضلع بصورت رندم با توجه به شعاع بیشینه دریافت شده توسط فرا خواننده ،تولید شده و در آرایه شعاع ها ریخته می شود.
</div>

```
r = [randi([0 m],1,NumberOfShapes);];
```

<div dir="rtl">
آستانه یا همان زخامت را می گیرد که در صورت نمایل می تواند رندم سازی شود.
</div>

```
t = 2; % threshhold
```

<div dir="rtl">
آرایه ای برای جا دادن مراکز شکل ها ساخته می شود.
</div>

```
p = zeros(1,2,NumberOfShapes);
```

<div dir="rtl">
مراکز شکل ها بصورت رندم با توجه به طول و عرض تصویر دریافتی در آرایه از قبل درست شده ریخته می شود.
</div>

```
for o=1 : NumberOfShapes
    p(:,:,o) = [randi([1 width]) randi([1 height])];
end
```

<div dir="rtl">
دستور Switch در یک حلقه شروع به فعالیت کرده و یکی یکی شکل ها را رسم می کند.
</div>


```
for k=1 : NumberOfShapes 
    switch Shapes(1,k)
```

<div dir="rtl">
اگر مربع در آمده باشد با مختصاط و ضلع رندم مربع رسم می کند.
</div>

```            
        case 0
            %square
                for i=1 : width
                    for j=1 : height
                        pri = [abs(p(1,1,k)-i)  abs(p(1,2,k)-j) ];
                        z = max(pri);
                        if  r(k)-t <= z  && z <= r(k)+t 
                            image(i, j) = 255;
                        end
                    end
                end
```

<div dir="rtl">
مستطیل رسم می کند. که رندم است و طول آن دو برابر عرض آن می باشد.
</div>


```
        case 1
            %rectangle
                for i=1 : width
                    for j=1 : height
                        pri=[abs(p(1,1,k)-i)  0.5*abs(p(1,2,k)-j)];
                        z= max(pri);
                        if  r(k)-t <= z  && z <= r(k)+t 
                            image(i, j) = 255;
                        end
                    end
                end
```

<div dir="rtl">
یک لوزی رسم میکند .
</div>


```           
        case 2
            %Rhombus
                for i=1 : width
                    for j=1 : height
                        z=abs(p(1,1,k)-i)+ 1.68*abs(p(1,2,k)-j);
                        if r(k)-t <= z  && z <= r(k)+t 
                            image(i, j) = 255;
                        end
                    end
                end
```

<div dir="rtl">
یک دایره رسم می کند. که بنابر طراحی برخی مواقع تو پر و برخی مواقع تو خالی است.
</div>

```       
        case 3
              %Circle
                for i=1 : width
                    for j=1 : height
                        z=(p(1,1,k)-i)^2 +(p(1,2,k)-j)^2;
                        if  z<= r(k)^2+t*20 && z>= r(k)^2-t*20
                            image(i, j) = 255;
                        end
                    end
                end
```

<div dir="rtl">
یک مثلث رسم می کند.
</div>


```            
        case 4 
            %Triangle
            x0=p(1,1,k);
            y0=p(1,2,k);
            t0=1/sqrt(3);
            for x=1 : width
                for y=1 : height
                      pri=[abs(x+(y-y0)/t0-x0) abs(x-(y-y0)/t0-x0) abs(x-x0+r)] ;
                      z=max(pri);
                    if r(k)-t <= z && z <= r(k)+t 
                        image(x, y) = 255;
                    end
                end
            end
    end
end

end
```

<div dir="rtl">
پایان.
</div>


