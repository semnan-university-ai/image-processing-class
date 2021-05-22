# image-processing-class
image processing class - 992

<div dir="rtl">
  
##### کد برنامه :<br />
~~~matlab
	
function [outText,outImage] = Captcha(matrixData,numberChar,move,rotate,destortion)
if nargin<3
  move = true;
  rotate = true;
  destortion = true;
 end

numbers_count = numberChar;
numbers =matrixData;
width = 500;
height = 200;

captcha_numbers =  round(rand(1, numbers_count) * 9); % matrix of random 4 number
outText = strjoin(string(captcha_numbers),''); %captcha number
captcha_numbers = uint8(captcha_numbers);
[r,c]=size(numbers(:,:,1));
captcha_image = zeros(r,c*numbers_count,'uint8');
for i = 1 : numbers_count
    if captcha_numbers(1,i) == 0
        captcha_numbers(1,i) = 10;
    end
    
    numbers_f=zeros(r,c,'uint8');
    if move
        B=randi([1,7]); %random move
    else
        B=3;
    end
    numbers_f(1+B:25-7+B,1:25-7)=numbers(4:r-4,4:c-4,captcha_numbers(1,i));
    if destortion
        Q=randi([8,16]); %random destortion D
        P=randi([-1,1]); %random destortion V
        numbers_f(Q:25,2:23)=numbers_f(Q:25,2+P:23+P);
        numbers_f(2:23,Q:25)=numbers_f(2+P:23+P,Q:25);
    end
    if rotate
        A=randi([-15,15]); %random rotate 
        numbers_f= imrotate(numbers_f,A,'bilinear','crop');
    end
    
	captcha_image(1:25,(i*c)-24:c*i) = numbers_f(:,:);
end


    captcha_image = imresize(captcha_image, [height width]);

captcha_image = imbinarize(captcha_image, 0.3);
outImage = captcha_image;

end

~~~

<div dir="rtl">

در پروژه  از سه تابع  به شرح ذیل استفاده شده است <br />
##### تابع loaddata :<br />
این تابع کاراکترهای اعداد 0-9 را که هر کدام در فایل جداگانه txt ذخیره شده است را در یک ماتریس ذخیره می‌کند و آن را یه  عنوان خروجی تابع بر می‌گرداند.<br />

</div>

~~~matlab
function [outmatrix] = loadData(pathDir,method)
%LOADDATA  function creates an matrix of the characters
%   Detailed explanation goes here
if method == 1
    numbers(:,:,1) = dlmread(pathDir+"\1.txt");
    numbers(:,:,2) = dlmread(pathDir+"\2.txt");
    numbers(:,:,3) = dlmread(pathDir+"\3.txt");
    numbers(:,:,4) = dlmread(pathDir+"\4.txt");
    numbers(:,:,5) = dlmread(pathDir+"\5.txt");
    numbers(:,:,6) = dlmread(pathDir+"\6.txt");
    numbers(:,:,7) = dlmread(pathDir+"\7.txt");
    numbers(:,:,8) = dlmread(pathDir+"\8.txt");
    numbers(:,:,9) = dlmread(pathDir+"\9.txt");
    numbers(:,:,10) = dlmread(pathDir+"\0.txt");
    numbers = uint8(numbers);
end
outmatrix = numbers;
end
~~~

<div dir="rtl">
  
##### تابع Captcha :<br />
این تابع اصلی برنامه است که وظیفه تولید کپجا را بر عهده دارد.<br />
پارامترهای ورودی تابع به ترتیب شامل :<br />
ماتریس دیتا که نقش کاراکترها را به تابع ارسال می‌نماید.<br /> 
تعداد کاراکترهای درون کپچا که توسط کاربر تعیین شده و تصویر خروجی در نهایت همان تعداد کاراکتر را خواهد داشت .<br />
است. نوع  این پارامترهای ورودی بولی بوده  و در صورت true بودن بر کپچا وارد می‌شوند این متدها به ترتیب عبارتند ازانتقال‌عمودی، چرخش حروف، رسم خطوط افقی br />
پارامترهای خروجی تابع ، پارامتر اول رشته متن تصادفی ایجاد شده  درون کپچا را برمی گرداند و پارامتر دوم تصویر ایجاد شده کپچا را برمی‌گرداند.<br />

</div>

~~~matlab
function [outText,outImage] = createCaptcha(matrixData,numberChar,move,rotate,destortion,dline)
%CREATECAPTCHA function creates an image of the captcha
%   Detailed explanation goes here
%defullt values for parameter is true
if nargin<3
  move = true;
  rotate = true;
  destortion = true;
  dline = true;
  
end

<
  خطوط زیر جهت دادن مقدارهای اولیه به متغیرهای خصوصی تابع است مخصوصاً طول و عرض تصویر خروجی کپچا که در دو خط آخر مقدار دهی شده است .<br />
</div>

~~~matlab
numbers_count = numberChar;
numbers =matrixData;
width = 500;
height = 200;
~~~

~~~
<div dir="rtl">
##### تابع ocr :<br />
خط اول تصویر ورودی را به عنوان پارامتر به تابع ocr متلب ارسال و خروجی را در متغیر ocrcaptcha ذخیره می نماید.<br />
 خط دوم یک ماتریس دو بعدی به اندازه تصویر ورودی جهت تغییر رنگ پیش زمینه ایجاد می کند.<br />
 خط سوم مقدار به دست آمده از تابع ocr را به شکل رشته متنی به خروجی تابع  نسبت می‌دهد .<br />
</div>

~~~matlab
ocrCaptcha = ocr(imgCaptcha);
imgRGB = zeros(size(imgCaptcha,1),size(imgCaptcha,2),3);
txtocr = strtrim(string(ocrCaptcha.Text));
~~~
<div dir="rtl">
##### با سپاس از توضیحات آقای روضاتیocr :<br />
