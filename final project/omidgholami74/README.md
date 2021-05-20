# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : Omid Gholami
* github id : omidgholami74
* Email : omidgholami@hotmail.com
* Type : roozaneh
# image-processing-class
image processing class - 992

<div dir="rtl">
 
 <h1> تمرین نهایی</h1>
 <hr>
 
 <h3> برنامه ای که در تمرین شماره ی 19 در کلاس توسط بنده حل شده است را از پوشه ی class دانلود کنید و کارهای زیر را روی آن انجام دهید:</h3>  
<ul>
 <li> روشی که انجام شده است را بهبود ببخشید.</li>
 <li>بخش های مختلف این برنامه را به صورت تابع در فایل جداگانه بسازید و آن ها را ساده تر فراخوانی کنید.
</li>
 <li>کپجاهای سخت تری ایجاد کنید فقط نکته اینکه از حوزه ی برنامه ی اولیه خارج نشوید
</li>
 <li>
  150 عکس با برنامه ی خود تولید کنید و آن را ذخیره کنید و بعد از ذخیره سازی آن در یک فایل خودتان با چشم کپچاها را تشخیص دهید و برچسب بزنید.
  </li>
 <h6>خروجی تابع ocr   و میزانی که متلب بتواند کپچای تصویری شما را شناسایی کند یکی از معیارهای مناسب برای سنجش برنامه ی شماست</h6>

</ul>
</div>

<div dir="rtl">
 پاک کردن command window و صفحه نمایش و بسته نمودن پنجره ها
 </div>
 
````
clc;
close all;
clear;
````
 <div dir="rtl">
 در این قسمت ویژگی های کپچا ها را مشحص می کنیم و بصورت زیر می باشد
 <ul>
  <li>alphabet_count: تعاد حروف کپچا(می توان این پارامتر را بصورت رندوم نیز در نظر گرفت</li>
  <li>width:عرض تصویر کپچا</li>
  <li>height:ارتفاع تصویر کپچا </li>
  <li>noise:میزان نویز در تصویر بر حسب درصد از کل پیکس ها</li>
  <li>number_of_rand_line: تعداد خطوط رندم در تصویر</li>
</ul>
</div>

 ````
 alphabet_count = 7;
width = 500;
height = 200;
noise =0.1; % percent
number_of_rand_line=30;

````
 <div dir="rtl">
با استفاده از تابع  زیر عکس های را بارگزاری میکنیم 
</div>
 
 ````
% load alphabet
alphabet=load_alpha();
````
<div dir="rtl">
فانکشن  load_alpha
 </div>
 
 ````
 
function images = load_alpha()
    alphabet(:,:,1) = dlmread("alphabet\A.txt");
    alphabet(:,:,2) = dlmread("alphabet\B.txt");
    alphabet(:,:,3) = dlmread("alphabet\C.txt");
    alphabet(:,:,4) = dlmread("alphabet\D.txt");
    alphabet(:,:,5) = dlmread("alphabet\E.txt");
    alphabet(:,:,6) = dlmread("alphabet\F.txt");
    alphabet(:,:,7) = dlmread("alphabet\G.txt");
    alphabet(:,:,8) = dlmread("alphabet\H.txt");
    alphabet(:,:,9) = dlmread("alphabet\I.txt");
    alphabet(:,:,10) = dlmread("alphabet\J.txt");
    alphabet(:,:,11) = dlmread("alphabet\K.txt");
    alphabet(:,:,12) = dlmread("alphabet\L.txt");
    alphabet(:,:,13) = dlmread("alphabet\M.txt");
    alphabet(:,:,14) = dlmread("alphabet\N.txt");
    alphabet(:,:,15) = dlmread("alphabet\O.txt");
    alphabet(:,:,16) = dlmread("alphabet\P.txt");
    alphabet(:,:,17) = dlmread("alphabet\Q.txt");
    alphabet(:,:,18) = dlmread("alphabet\R.txt");
    alphabet(:,:,19) = dlmread("alphabet\S.txt");
    alphabet(:,:,20) = dlmread("alphabet\T.txt");
    alphabet(:,:,21) = dlmread("alphabet\U.txt");
    alphabet(:,:,22) = dlmread("alphabet\V.txt");
    alphabet(:,:,23) = dlmread("alphabet\W.txt");
    alphabet(:,:,24) = dlmread("alphabet\X.txt");
    alphabet(:,:,25) = dlmread("alphabet\Y.txt");
    alphabet(:,:,26) = dlmread("alphabet\Z.txt");
    alphabet = uint8(alphabet);
    images =alphabet
    
end

````
<div dir="rtl">
 ایجاد پوشه برای عکس های خروجی و همچنین ایجاد یک فایل متلب برای ذخیره ی نتایج در آن
 
 </div>

````
mkdir 'captcha'
 A = {'image name', 'OCR result'};
 xlswrite('result.xls',A,1,'E1')
````
<div dir="rtl">
ایجاد یک حلقه برای شمارش تصاویر و ایجاد 150 عکس کپچا</br>
 
 <h6> با استفاده از متعیر آلفا که لیست حروف انگلیسی هست .متن اصلی عکس را بدست می آوریم</h6>
<h6>  و همچنین یک لیست رندوم با توجه به حروف ایجاد می کنیم و در متغیر کپچا_آلفا ذخیره میکنیم</h6>
 </div>

````
alpha=['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I','J', 'K', 'L', 'M' ...
    , 'N', 'O', 'P', 'Q','R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
     captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
     orginal_Text=alpha(captcha_alphabet);
````
<div dir="rtl">
 <h3> rand_background</h3>
 توسط این تابع به هر کدام از حروف بصورت تصادی و رندوم بگرند سفید اضافه میکنیم.
 </div>

````
function change_back = rand_background(img,alphabet_count)
    if randi(alphabet_count) ==randi(alphabet_count)
        change_back=imcomplement(img);
    else
        change_back=img;
    end
    
end

````

<div dir="rtl">
 <h3> rotate</h3>
چرخش تصویر توسط این تابع و دوباره تنظیم نمودن اندازه آن
</div>

````
deg =randi(100);
    temp=zeros(36,36);
    temp=uint8(temp);
    captcha_image_rotated=imrotate(img,deg)
    [w,h]=size(captcha_image_rotated);
    temp(1:w,1:h) = captcha_image_rotated;
    image_rotated= temp
````

<div dir="rtl">
 <h3> my_noise</h3>
 
 ایجاد نویز فلفل نمکی روی تصویر توسط این تابع
</div>

````
function img_noise = my_noise(image,percent)
        [h,w]=size(image);
        pixels =h*w;
        number_of_noise =floor((percent*pixels)/2);
    for m=1:number_of_noise
        i=randi(h);
        j=randi(w);
        image(i,j)=255;
    end
    for m=1:number_of_noise
        i=randi(h);
        j=randi(w);
        image(i,j)=0;
    end

img_noise =image;
end
````


<div dir="rtl">
 <h3> rand_lines</h3>
 
 ایجاد خط های تصادفی </div>

````
function image_line = rand_lines(img,n)
        [h,w] =size(img);
    for i=1:n
          img =draw_line(img,randi(h) ,randi(w) , randi(h) ,randi(w));
    end 
 image_line= img;     
end

````

<div dir="rtl">
 <h3> draw_line</h3>
 تابع اصلی ایجاد خطوط رندوم</div>

````
function result=draw_line(img, X1, Y1, X2, Y2)
result = img;

for x=max(1, X1):sign(X2 - X1):max(1, X2)
    y = round(f(x, X1, Y1, X2, Y2));
    if y > 0
        result(x, y:y+2) = 255;
    end
end
for y=max(1, Y1):sign(Y2 - Y1):max(1, Y2)
    x = round(f2(y, X1, Y1, X2, Y2));
    if x > 0
        result(x, y:y+2) = 255;
        
    end
end
function y=f(x, X1, Y1, X2, Y2)
a = (Y2 - Y1)/(X2 - X1);
b = Y1 - X1 * a;
y = a * x + b;
function x=f2(y, X1, Y1, X2, Y2)
if X1==X2
    x = X1;
else
	a = (Y2 - Y1)/(X2 - X1);
	b = Y1 - X1 * a;
	x = (y - b)/a;
end
````
<div dir="rtl">
 <h3> PinchSpherize</h3>
 
فیلتر Spherize ، به اشیا یک ظاهر ۳ بعدی می دهد. این فیلتر، این کار را با لفاف کردن دور یا درون یک شکل گوی مانند، کج کردن و کشیدن تصویر انجام می دهد. </div>

````
function [J,Tx,Ty]=PinchSpherize(I,Gamma,R0)
% Function PINCHSPHERIZE warps the image around a 3D spherical
% shape, or performs Pinch transform. (Geometric Distortion filter).
%
% [Iwarped, Tx, Ty] = PinchSpherize(I,Gamma,R0)
%
% inputs,
%   I : The 2D input image (greyscale or color)
%   Gamma: Gives the amount of distortion in degrees, range -90,90
%          (defaults to 40)
%            Gamma  = 0, no distortion
%            Gamma  < 0, Pinch transform
%            Gamma  > 0, Spherical transform
%          The Radius of the Sphere used is R=R0/(sqrt(2)*sin(Gamma/2));
%   R0 : The outer radius of the transformation (defaults to 1/2 of image size)
%
% outputs,
%   Iwarped : The spherical transformed output image.
%   Tx, Ty : The x and y backwards translation (transformation) images, which 
%            can be used with the function movepixels.m
% 
% note, without outputs , the function show the spherize transformed image
%       overlayed with a grid.
%
% example,
%   I=im2double(imread('lena.jpg'));
%   PinchSpherize(I);
%
% Function is written by D.Kroon University of Twente (January 2009)

% Check inputs
if(~exist('Gamma','var')), Gamma=25; end
if(~exist('R0','var')), R0=max(size(I))/2; end

% Calculate the uniform pixel locations of the image
[coord_x,coord_y]=ndgrid(0:size(I,1)-1,0:size(I,2)-1);

% Center of image is 0,0
coord_x=coord_x-size(I,1)/2; 
coord_y=coord_y-size(I,2)/2;

% When image is not square, calculate scaling to make the coordinates square
mul_x=1; mul_y=1;
if(size(I,1)>size(I,2)), mul_y=size(I,1)/size(I,2); end
if(size(I,1)<size(I,2)), mul_x=size(I,2)/size(I,1); end
coord_x=coord_x*mul_x; coord_y=coord_y*mul_y;

% Gamma in degrees to rad
Gamma_rad=Gamma*(pi/180);

% Calculate backwards projection transformation field
[coord_x_new,coord_y_new]=transform_backward(coord_x,coord_y,R0,Gamma_rad);
Tx=coord_x_new-coord_x; Ty=coord_y_new-coord_y;
Tx=Tx/mul_x; Ty=Ty/mul_y;


% Transform the image
J = movepixels(I,Tx,Ty);

% If no outputs specified by user, show the transformed image
if(nargout==0 )
    % Show transformed image
    figure, imshow(J,[]);
    hold on;
    % Show transformation grid
    showbspline_grid(I,R0,Gamma_rad,mul_x,mul_y);
    % Suppress outputs
    J=[]; Tx=[]; Ty=[];
end

function showbspline_grid(I,R0,Gamma_rad,mul_x,mul_y)
    for i=1:8:max(size(I))
        linex=i*ones(1,max(size(I)))-max(size(I))/2;
        liney=(1:max(size(I)))-max(size(I))/2;
        [linex_new,liney_new]=transform_forward(linex,liney,R0,Gamma_rad);
        plot(liney_new/mul_y+size(I,2)/2,linex_new/mul_x+size(I,1)/2);
    end
    for i=1:8:max(size(I))
        linex=(1:max(size(I)))-max(size(I))/2;
        liney=i*ones(1,max(size(I)))-max(size(I))/2;
        [linex_new,liney_new]=transform_forward(linex,liney,R0,Gamma_rad);
        plot(liney_new/mul_y+size(I,2)/2,linex_new/mul_x+size(I,1)/2);
    end
    

function [coord_x_new,coord_y_new]=transform_forward(coord_x_old,coord_y_old,R0,Gamma_rad)
    % Amplitude (Distance to center) of all points
    pold=sqrt(coord_x_old.^2+coord_y_old.^2);
    
    % Radius of Transformation Sphere 
    R=R0/(sqrt(2)*sin(Gamma_rad/2));
    
    % Z (virtual) Distance to 2D plane 
    Xc=(1/2)*(1+cot(Gamma_rad/2))*R0;
    Yc=(1/2)*(1-cot(Gamma_rad/2))*R0;
    
    % New Amplitude (Distance to center) of all points
    if(Gamma_rad>0)
        pnew=Yc + sqrt(R^2-(pold-Xc).^2);
    elseif(Gamma_rad<0)
        pnew=Yc - sqrt(R^2-(pold-Xc).^2);        
    else
        pnew=pold;
    end
    
    % No distortion outside the sphere region
    pnew(pold>R0)=pold(pold>R0);    
    
    % Eliminate imaginair values due to round errors
    pnew=real(pnew);
    
    % Calculate new x,y locations of the pixels
    imgl=sqrt(coord_x_old.^2+coord_y_old.^2);
    coord_xn=coord_x_old./(imgl+eps);
    coord_yn=coord_y_old./(imgl+eps);
    coord_x_new=pnew.*coord_xn;
    coord_y_new=pnew.*coord_yn;

function [coord_x_old,coord_y_old]=transform_backward(coord_x_new,coord_y_new,R0,Gamma_rad)
    pnew=sqrt(coord_x_new.^2+coord_y_new.^2);
    R=R0/(sqrt(2)*sin(Gamma_rad/2));
    Xc=(1/2)*(1+cot(Gamma_rad/2))*R0;
    Yc=(1/2)*(1-cot(Gamma_rad/2))*R0;
    if(Gamma_rad>0)
        pold=-(sqrt(R^2-(pnew-Yc).^2)-Xc);
    elseif(Gamma_rad<0)
        pold=sqrt(R^2-(Yc-pnew).^2)+Xc;        
    else
        pold=pnew;
    end
    pold(pnew>R0)=pnew(pnew>R0);
    pold=real(pold);  
    imgl=sqrt(coord_x_new.^2+coord_y_new.^2);
    coord_xn=coord_x_new./(imgl+eps);
    coord_yn=coord_y_new./(imgl+eps);
    coord_x_old=pold.*coord_xn;
    coord_y_old=pold.*coord_yn;

````
<div dir="rtl">
 <h3> movepixels</h3>
 
مختصات x وy تبدیل میکند این تابع پکیسل ها را از یک عکسدو بعدی به </div>

````
function Iout=movepixels(I,Tx,Ty)
% This function MOVEPIXELS, will (backwards) translate the pixels 
% of an 2D image according to x, y translation images 
% (bilinear interpolated).
%
%  J = movepixels(I,Tx,Ty);
%
% inputs,
%   I : The input image
%   Tx : Translation in x direction
%   Ty : Translation in y direction
%
% outputs,
%   J : The transformed image.
%
% Description:
%   Backwards tranformation, the intensity of a pixel in the output image
%   is the bilinear interpolated value of a coordinate in the input image.
%   for example: J(10,10) = I(10+Tx(10,10),10+Ty(10,10));
%
% example:
%   I = rgb2gray(im2double(imread('lena.jpg')));
%   Tx = imfilter(100*rand(size(I))-50,fspecial('gaussian',[32 32],6));
%   Ty = imfilter(100*rand(size(I))-50,fspecial('gaussian',[32 32],6));
%   J = movepixels(I,Tx,Ty);
%   figure, imshow(J), title('The warped image');
%
% Function is written by D.Kroon University of Twente (January 2009)

%  The uniform coordinates of the output image
[px,py]=ndgrid(0:size(I,1)-1,0:size(I,2)-1);

% The coordinates in the input image, which will be translated to the uniform 
% coordinates in the input image.
pxrealt=px+Tx;
pyrealt=py+Ty;

% Determine the coordinates of the pixel(s) which will be come the current pixel
% (using linear interpolation)  
xBas0=floor(pxrealt); 
yBas0=floor(pyrealt);
xBas1=xBas0+1;           
yBas1=yBas0+1;

% Linear interpolation constants (percentages)
xCom=pxrealt-xBas0; 
yCom=pyrealt-yBas0;
perc0=(1-xCom).*(1-yCom);
perc1=(1-xCom).*yCom;
perc2=xCom.*(1-yCom);
perc3=xCom.*yCom;
                
% limit indexes to boundaries
check_xBas0=(xBas0<0)|(xBas0>(size(I,1)-1));
check_xBas1=(xBas1<0)|(xBas1>(size(I,1)-1));
check_yBas0=(yBas0<0)|(yBas0>(size(I,2)-1));
check_yBas1=(yBas1<0)|(yBas1>(size(I,2)-1));
xBas0(check_xBas0)=0; 
xBas1(check_xBas1)=0; 
yBas0(check_yBas0)=0; 
yBas1(check_yBas1)=0; 

% Detect color image
if(ndims(I)==2), lo=1; else lo=3;  Iout=zeros(size(I)); end

% Loop through all colors RGB    
for i=1:lo;    
    Islice=double(I(:,:,i));
    % Get the intensities of all 4 neigborhs of every coordinate
    intensity_xyz0=Islice(1+xBas0+yBas0*size(I,1));
    intensity_xyz1=Islice(1+xBas0+yBas1*size(I,1)); 
    intensity_xyz2=Islice(1+xBas1+yBas0*size(I,1));
    intensity_xyz3=Islice(1+xBas1+yBas1*size(I,1));
    % Make pixels which were before outside the image black
    intensity_xyz0(check_xBas0|check_yBas0)=0;
    intensity_xyz1(check_xBas0|check_yBas1)=0;
    intensity_xyz2(check_xBas1|check_yBas0)=0;
    intensity_xyz3(check_xBas1|check_yBas1)=0;
	% Set the output image
	Iout_slice=intensity_xyz0.*perc0+intensity_xyz1.*perc1+intensity_xyz2.*perc2+intensity_xyz3.*perc3;
    Iout(:,:,i)=reshape(Iout_slice,[size(I,1) size(I,2)]);
end

% Set class of output image to input image.
if(isa(I,'single')), Iout=single(Iout); end
if(isa(I,'uint8')), Iout=uint8(Iout); end
if(isa(I,'uint16')), Iout=uint16(Iout); end
if(isa(I,'uint32')), Iout=uint32(Iout); end
if(isa(I,'int8')),   Iout=int8(Iout); end
if(isa(I,'int16')), Iout=int16(Iout); end
if(isa(I,'int32')), Iout=int32(Iout); end




````

<div dir="rtl">
 <h3> write_results</h3>
 
 ثبت گزارشات و ایجاد یک فایل اکسل برای نمایش نتایج  ocr</div>

````
 	ocr_result=ocr(img);
    recognizedText =ocr_result.Text;
    A = {(captcha_name), (recognizedText),(org_text)};
    sheet = 1;
    xlRange = strcat('E',num2str(n+1));
    xlswrite('result.xls',A,sheet,xlRange)
````




<div dir="rtl">
 <h3> نمایش خروجی</h3>
 <p align="center">
<img width="800" height="800" src="https://user-images.githubusercontent.com/48456571/118995940-c836bf80-b99c-11eb-8d5c-bde01458c9d9.png">

  <h3 align="center">بخشی از 150 تصویر تولید شده</h3>
</p>
 
 <p align="center">
<img width="800" height="800" src="https://user-images.githubusercontent.com/48456571/118995530-75f59e80-b99c-11eb-8aaf-f8eadaa35765.png">
  
  <h3 align="center">نتایج :</h3>

</p>
<h3 align="center"> با توجه به اطلاعاتی که در فایل اکسل ذخیره شد و همچنین چند بار اجرای کامل خوش بختانه هیچکدام از عکس ها توسط توابع آماده متلب قایل خواندن نبودن و می توان با یک سری تغییرات جزیی در این روش از آن به عنوان کپچا برای دسترسی های مطمئن و ایمن استفاده نمود</h3>
 
</div>
