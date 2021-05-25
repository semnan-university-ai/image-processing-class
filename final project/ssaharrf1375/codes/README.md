<div dir="rtl">
># پروژه ی دانشجویان گروه 1
<br />
</div>


***
>CODE

<div dir="rtl">
با فایل ex19شروع می کنیم
</div>

<div dir="rtl">
با این دستور تصاویر حروف الفبای انگلیسی را از پوشه دریافت می کنیم
</div>

```ruby
address = 'C:\Program Files\Polyspace\R2019b\bin\prj\';
```

<div dir="rtl">
تعداد حروفی که می خواهیم در کپچا مشخص شود را با دستور زیر مشخص می کنیم.
</div>

```ruby
alph_count = 5;
```

<div dir="rtl">
ابعاد کپچا را درون متغیر می گذاریم
</div>

```ruby
wi = 512;
he = 256;
```

<div dir="rtl">
در مرحله بعد تابعی با نام Read_Alpha را اعمال کرده تا حروف ما درون متغییر alph ذخیره شوند و تعداد حروف و اسامی آن ها را استخراج کنیم
</div>

```ruby
[img_name, img_count, alph] = Read_Alpha(address);
```

<div dir="rtl">
برای این که اعداد متوالی پشت سر هم نداشته باشیم، یک متغییر به نام Consecutive_num تعریف می کنیم
</div>

```ruby
Consecutive_num=1;
```

<div dir="rtl">
در ادامه، یک حلقه تعریف می کنیم و شرط ادامه آن را به صورت زیر تعریف می کنیم
</div>

```ruby
while Consecutive_num == 1
```

<div dir="rtl">
دستورات درون حلقه، 5 عدد تصادفی غیر تکراری تولید می کنند که احتمال دارد این اعداد متوالی باشند. برای اینکه این اتفاق نیفتد، یک حلقه دیگر ایجاد می کنیم که از این اتفاق جلوگیری کند:
</div>

```ruby
cap_alph = RandomNum(alph_count, img_count);
    for r=1:alph_count-1
        if abs(cap_alph(r+1) - cap_alph(r)) == 1
            break
        else
            Consecutive_num = 0;
        end
    end
end
```

<div dir="rtl">
راه دیگر سخت تر کردن کپچا این است که حروف الفبا را چرخش دهیم. برای این کار، ما سه روش در اختیار داریم:nearest، bilinear و bicubic.
اگر مقدار MTD را برابر 3 قرار دهیم، به این معنی است که از متد سوم استفاده می کنیم.
</div>

```ruby
alph_size = size(alph(:,:,1));

method = {'nearest', 'bilinear', 'bicubic'};
MTD=3;
angle = 0;

cap_img_r = Create_Cap_Img(alph_count, cap_alph, img_count, alph, method, MTD, he, wi);
```

<div dir="rtl">
در مرحله بعد برای سخت تر کردن کپچا، به آن نویز اضافه می کنیم. می توانیم از نویز های poisson،gaussian، salt & pepper و speckle استفاده کنیم که در اینجا، ما از نویز فلفل و نمک با شدت 0.2 استفاده کردیم: 
</div>

```ruby
Noise = {'poisson', 'gaussian', 'salt & pepper', 'speckle'};
cap_img_r = imnoise(cap_img_r,Noise{3},.2);
```

<div dir="rtl">
در مرحله بعد، می خواهیم خطوطی را برای سخت تر کردن کپچا به آن اضافه کنیم. ضخامت خط را با استفاده از متغیر LineWi مشخص می کنیم. تابع LineDraw نیز خطوط را به تصویر اضافه می کند
</div>

```ruby
LineWi = 1;
cap_img_r = LineDraw(cap_img_r, wi, he, LineWi);
```

<div dir="rtl">
پس از اضافه کردن خطوط، روی تصویر کپچا یک فیلتر اعمال می کنیم. در ابتدا اندازه فیلتر را با متغیر Filter_size مشخص می کنیم. 
</div>

```ruby
Filter_size = 13;
filter_cap_img_r = Filter_Cap_Img(he, wi, alph_count, method, cap_img_r, Filter_size);

% filter_cap_img_r = imgaussfilt(filter_cap_img_r,2);
% filter_cap_img_r = imsharpen(filter_cap_img_r,'Radius',2,'Amount',1);
```

<div dir="rtl">
برای کامل کردن عملیات فیلتر تصویر را به باینری تبدیل می کنیم. مقدار آستانه را نیز 0.5 قرار دادیم. با استفاده از دستور imshowpairمی توانیم دو تصویر را در کنار همدیگر نمایش دهیم که در اینجا، دو تصویر فیلتر شده و نویزی را با هم نمایش می دهد
</div>

```ruby
bw = .5;
figure(),
imshowpair(cap_img_r,im2bw(filter_cap_img_r, bw),'montage');
```

<div dir="rtl">
در ادامه، با استفاده از تابع ocr تصویر ساخته شده را می خوانیم و خروجی تابع را درون یک متغیر به نام txt قرار می دهیم:
</div>

```ruby
% txt = ocr(im2bw(filter_cap_img_r, bw));
```

<div dir="rtl">
با اجرای برنامه بالا، خروجی های زیر حاص می شود
</div>



![1](https://user-images.githubusercontent.com/57560004/119554948-86e64b80-bdb2-11eb-84d6-f910e8d17241.jpg)


<br>

<div dir="rtl">
# معرفی تابع Read_Alpha.m
</div>


<div dir="rtl">
این تابع، پارامتر address را می گیرد و سه پارامتر برمی گرداند:
</div>

```ruby
function [img_name, img_count, alph] = Read_Alpha(address)
```

<div dir="rtl">
در ادامه، ما نیاز داریم که از داخل آدرس، فایل های متنی را بخوانیم. برای ساده تر کردن و بهبود روشی که در فایل اصلی تمرین آورده شده، از دستور دایرکتوری (dir) استفاده کردیم و تمام فایل ها را در متغیر D ذخیره کردیم:
</div>

```ruby
D = dir(address);
```

<div dir="rtl">
برای اینکه که بعد از اجرای حلقه for تعداد تکرار های حلقه را بشماریم، از متغیر زیر استفاده می کنیم
</div>

```ruby
img_count = 1;
```

<div dir="rtl">
از متغیر alph  برای این منظور استفاده می کنیم که تک تک فایل های متنی تصاویر در آن ذخیره شوند. از آن جایی که سایز هر تصویر 25 در 25 است و تعداد تصاویر هم 26 عدد است، پارامتر های این متغیر به صورت زیر تعریف می شوند. این کار زمان اجرای کد قبلی را نیز کاهش می دهد چرا که از همان ابتدا، ابعاد تصاویر را مشخص می کنیم: 
</div>

```ruby
alph = zeros(25,25,26);
```

<div dir="rtl">
برای ذخیره سازی اسامی تصاویر، یک سلول تعریف می کنیم
</div>

```ruby
img_name = cell(1,26);
```

<div dir="rtl">
در ادامه، یک حلقه for درست می کنیم که از 1 تا سایز D اجرا شود. ممکن است در پوشه ما، به جز فایل های متنی، فایل های دیگری وجود داشته باشند 
</div>

```ruby
for i=1 : size(D,1)
```

<div dir="rtl">
اسامی آیتم ها را در داخل متغیر NAME ذخیره می کنیم
</div>

```ruby
    Name = D(i).name;
```

<div dir="rtl">
با استفاده از دستور strfind، فایل هایی که پسوند txt دارند را درون متغیر find ذخیره می کنیم
</div>

```ruby
find = strfind(Name, '.txt');
```

<div dir="rtl">
حال برای اینکه همه اسامی وارد alph نشوند باید یک شرط تعیین کنیم. اول از همه، دستور isempty فایل را بررسی می کند که آیا خالی است یا نه، پس مقدار متغیر empty  باید برابر با 0 باشد  
</div>

```ruby
empty = isempty(find);
```

<div dir="rtl">
زمانی که تابع بتواند فایل متنی را پیدا کند، عدد 2 را بر میگرداند. در نتیجه باید عددی باشد. برای چک کردن عددی بودن آن یک متغیر به اسم num تعریف می کنیم از دستور isnumeric استفاده می کنیم که در صورت پیدا کردن فایل متنی، باید مقدارش 1 (به معنی عددی بودن) باشد
</div>

```ruby
num = isnumeric(find);
```

<div dir="rtl">
درون شرط، با استفاده از دستور dlmread می توانیم هر کدام از فایل های متنی را بخوانیم و در alph ذخیره می کنیم. دستور strcat دو رشته را به هم الحاق می کند. این دستور به خاطر این استفاده می شود که اسم های داخل آدرس را بخواند
</div>

```ruby
alph(:,:,img_count) = dlmread(strcat(address,Name));
```

<div dir="rtl">
برای ذخیره سازی اسامی در سلول خالی که تعریف کرده بودیم نیز از دستور زیر استفاده می کنیم
</div>

```ruby
img_name{img_count} = Name(1);
```

<div dir="rtl">
در پایان حلقه، یکی به شمارنده اضافه می شود
</div>

```ruby
img_count = img_count + 1;
```

<div dir="rtl">
چون img_count از 1 شروع شده بود، در پایان کار حلقه, عدد آن یکی بیشتر از آن چیزی که باید باشد، می شود. برای همین، از دستور زیر استفاده می کنیم
</div>

```ruby
img_count = img_count - 1;
```

<div dir="rtl">
در انتها، با استفاده از دستور uint8 یعنی اعداد بدون علامت 8 بیتی، تصویری که در اختیار داریم را از دابل به uint8 تغییر حالت می دهیم
</div>

```ruby
alph = uint8(alph);
```

<div dir="rtl">
معرفی تابع RandomNum.m
</div>

<div dir="rtl">
این تابع تعداد حروف الفبا و تعداد تصاویر را دریافت می کند
</div>

```ruby
function cap_alph = RandomNum(alph_count, img_count)
```

<div dir="rtl">
با استفاده از دستور randperm تعدادی عدد تصادفی غیر تکراری تولید می کنیم و متغیر هایی که این دستور دریافت می کند، تعداد تصاویر و تعداد حروف الفبا هستند
</div>

```ruby
cap_alph = [randperm(img_count,alph_count)];
```

<div dir="rtl">
قطعه کد زیر، حروف را به uint8 تبدیل می کند و آن را درون متغیر cap_alph ذخیره می کند
</div>

```ruby
cap_alph = uint8(cap_alph);
```

<div dir="rtl">
معرفی تابع Create_Cap_Img
</div>

<div dir="rtl">
ورودی های این تابع عبارتند از: alph_count، cap_alph، img_count، alph، method، MTD، he و wi
</div>

```ruby
function cap_img_r = Create_Cap_Img(alph_count, cap_alph, img_count, alph, method, MTD, he, wi)
cap_img_r = zeros(25,25*alph_count);
```

<div dir="rtl">
حلقه ای از 1 تا 5 ایجاد می کنیم
</div>

```ruby
for i = 1 : alph_count
```

<div dir="rtl">
برای اینکه بررسی کنیم که بازه اعداد بین 1 تا 26 است از قطعه کد زیر استفاده می کنیم
</div>

```ruby
    if cap_alph(1,i) < 1
        cap_alph(1,i) = 1;
    end
    if cap_alph(1,i) > img_count
        cap_alph(1,i) = img_count;
    end
```

<div dir="rtl">
برای چرخش، ابتدا اندیس های زوج و فرد را جدا کرده و زوج ها را با 9 درجه و فرد ها را با زاویه -10 درجه استفاده می کنیم
</div>

```ruby
    if rem(i,2) == 0
        angle = 9;
    else
        angle = -10;
    end
```

<div dir="rtl">
دستور زیر، حروف الفبای انتخاب شده را با استفاده از تابع imrotate و با زاویه i+angle چرخش داده و آن ها را درون متغیر cap_img_r ذخیره می کند
</div>

```ruby
cap_img_r(:,(25*i)-24:25*i) = imrotate(alph(:,:,cap_alph(1,i)),i+angle,'crop',method{MTD});
end
```

<div dir="rtl">
در نهایت تصویر را به uint8 تبدیل کرده و سایز تصویر را به 256 در 512 تغییر می دهیم تا تابع ocr بهتر بتواند تصویر را بخواند
</div>

```ruby
cap_img_r = uint8(cap_img_r);

cap_img_r = imresize(cap_img_r, [he wi]);
end
```

<div dir="rtl">
معرفی تابع LineDraw.m
</div>

<div dir="rtl">
این تابع، تصویر، طول و عرض و ضخامت خط را دریافت می کند
</div>

```ruby
function cap_img_r = LineDraw(cap_img_r, wi, he, LineWi)
```

<div dir="rtl">
با استفاده از دستور insertShape، می توانیم خط یا دایره و یا اشکال مختلف را ایجاد کرده و به کپچا اضافه کنیم. برای خط از پارامتر های x1، x2، y1 و y2 استفاده می کنیم. برای دایره نیز از پارامتر های x و y که مرکز دایره هستند و r که شعاع دایره است استفاده می کنیم. می توانیم رنگ خطوط و دایره ها را به انتخاب تغییر دهیم
</div>

```ruby
cap_img_r = insertShape(cap_img_r,'Line',[1 50 wi 100],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[1 150 wi 50],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[1 100 wi 100],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[1 80 wi 150],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[30 1 80 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[100 1 150 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[200 1 70 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[250 1 300 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[300 1 400 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[wi 1 370 he],'LineWidth',LineWi, 'color','white');

cap_img_r = insertShape(cap_img_r,'Circle',[100 100 70],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Circle',[300 100 70],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Circle',[400 100 70],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Circle',[450 200 80],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Circle',[500 150 80],'LineWidth',LineWi, 'color','blue');
cap_img_r = insertShape(cap_img_r,'Circle',[200 100 80],'LineWidth',LineWi, 'color','blue');
```

<div dir="rtl">
پس از اجرای کد بالا، تصویر رنگی خواهیم داشت. برای تبدیل تصویر رنگی به تصویر خاکستری، از دستور زیر استفاده می کنیم
</div>

```ruby
cap_img_r = rgb2gray(cap_img_r);
```

<div dir="rtl">
  
این تابع مقادیر he، wi، alph_count، method، cap_img_r و Filter_size را دریافت می کند: 
</div>

```ruby
function filter_cap_img_r = Filter_Cap_Img(he, wi, alph_count, method, cap_img_r,Filter_size)
Cap_img = zeros(he+50, wi+(alph_count*50));
 ```

<div dir="rtl">
  
ابتدا یک ماتریس خالی ایجاد کرده و اندازه آن را طوری تغییر می دهیم که حروف بعد از وارد شدن به آن، به همدیگر نچسبند. به طور مثال اگر حروف j و i کنار هم قرار گیرند، تابع ocr آن ها را h تشخیص می دهد و ما نمی خواهیم درصد تشخیص این تابع کم تر شود؛ به همین خاطر، بینشان 50 تا فضای خالی ایجاد می کنیم. در ادامه، برای تقسیم بندی و جدا سازی حروف کپچا، از دستور زیر استفاده می کنیم. این کار برای این صورت می گیرد تا اثر چرخش تصویر را خنثی کند تا بتوانیم فیلتر را روی آن اعمال کنیم. با استفاده از یک حلقه و دستور  imrotate این کار را انجام می دهیم و در پایان حلقه، چرخش را به سر جای اولش برمی گردانیم:
</div>

```ruby
Cap_img = zeros(he+50, wi+(alph_count*50));
slice_img = wi/alph_count;
X=0;
for i=1:alph_count
    if rem(i,2)==0
        angle = 9;
    else
        angle = -10;
    end
    Cap_img(25:he+24,((slice_img*i)-(slice_img-1))+X:(slice_img*i)+X) = imrotate(cap_img_r(:,(slice_img*i)-(slice_img-1):slice_img*i),-(i+angle),'crop', method{1});
    X = X+50;
end
 ```

<div dir="rtl">
  
در ادامه تصویر را تبدیل به uint8 می کنیم :
</div>

```ruby
Cap_img = uint8(Cap_img);
 ```

<div dir="rtl">
  
در پایان، برای محو کردن تصویر می توانید  یکی از فیلترهای زیر را از حالت کامنت خارج کرده و از آن استفاده کنید. به دلیل اینکه فیلتر گوسین نتیجه بهتری داشت، ازین فیلتر استفاده کردیم:
</div>

```ruby
filter_cap_img_r = imgaussfilt(Cap_img,5);
% filter_cap_img_r = medfilt2(filter_cap_img_r,[Filter_size,Filter_size]);
% filter_cap_img_r = medfilt2(filter_cap_img_r,[Filter_size-4,Filter_size-4]);
% filter_cap_img_r = medfilt2(filter_cap_img_r,[5,5]);
end
 ```

