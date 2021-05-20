# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : dalile rashidi
* github id : dalile512
* Email : d.rashidi512@gmail.com
* Type : roozane



<div dir ="rtl">

 ###  توضیح روند کلی برنامه :<br/>

  
   ر ابتدا
</div>
  
<div dir ="rtl">

###   توضیح کد :<br/>
  
  *   در ابتدا ،داده های مورد نظر را  توسط تابع loaddata.m می خوانیم.<br/>
     
   
</div>
  
 
  
  
    
  ```
    function [alphabet] = loaddata()    
  
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
     
  end
    
   ```
   
   
  <div dir ="rtl">

###   توضیح کد اصلی :<br/>
  
  
   
</div>
    
    
   ```
  clc;
  close all;
  clear;
   ```
   
   
   
   <div dir ="rtl">

  * در ابتدا ،داده های مورد نظر را  توسط تابعloaddata.m می خوانیم.<br/>
     
   
</div>
   
   ```
  alphabet=loaddata();
 ```
 
  <div dir ="rtl">

  * a متغیری است که به صورت رندوم (در بازه ی 0تا50 درجه) انتخاب می شود که شکل حروف چرخش کند <br/>
     
   
</div>
 
 ```
  a=randi([0 50]);
   
 J = imrotate(alphabet,a,'bilinear');

alphabet = uint8(J);

```

 <div dir ="rtl">

*  این حلقه برای این است که 150 مرتبه این تصویر با این شرایط را ایجاد کند. (نویز،دوران و...).<br/>
     
  
</div>

```
for j=1 :150
```

     
 <div dir ="rtl">
 
*   با این قطعه کد،تعداد حروف که به صورت تصادفی از 1 تا 10 است،  مشخص می شود. <br/>

</div>


```
alphabet_count = randi([1 10]);
width = randi([300 500]);
height = randi([150 250]);
     

captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8') ];

captcha_alphabet = uint8(captcha_alphabet);


captcha_image = zeros(size(alphabet(:,:,1)));

%captcha_image = alphabet(:,:,1);

%%%%
for i = 1 : alphabet_count
    if captcha_alphabet(1,i) < 1
        captcha_alphabet(1,i) = 1;
    end
    if captcha_alphabet(1,i) > 26
        captcha_alphabet(1,i) = 26;
    end
    
    
	captcha_image  = [ captcha_image alphabet(:,:,captcha_alphabet(1,i)) ];
    
end

captcha_image = imresize(captcha_image, [height width]);

```

     
 <div dir ="rtl">
 
*   ایجاد نویز فلفل نمکی( در بازه تصادفی 0 تا 1 (که بر 10 تقسیم شده است.) <br/>

</div>


```
b=rand()/10
captcha_image=imnoise(captcha_image,'salt & pepper',b);
figure;
imshow(im2bw(captcha_image, 0.3));

ocr(captcha_image)
end

```

     
 <div dir ="rtl">
 
*   با این قطعه کد،150 تصویر به وجود آمده ،در فایل image ، ذخیره می شود. <br/>

</div>


  ```
for k=1:150
    saveas(figure(k),fullfile('H:\arshd daneshga\tetm 2\pardazesh tasvir\t1\proge19\image',['figure' num2str(k) '.jpg']));
end`
    
  ```
    
    
    
           
 
    
  <div dir ="rtl">
  
   ###   توضیح تابع ocrtest :<br/>
  
</div>

<div dir ="rtl">
 
*   در این قسمت،تصویر مورد نظر را که در فایل image ذخیره شده است را فراخوانی می کنیم.سپس با تابعocrResults توجه می شویم که آیا ocr می تواند   کپچا را تشخیص دهد یانه! . <br/>

</div>



```
clc;
close all;
clear;

test   = imread('C.jpg');
     ocrResults     = ocr(test)
     recognizedText = ocrResults.Text;
     figure;
     imshow(test);
    m  =ocr(test);
 disp(m.Text);

```


<div dir ="rtl">
 
*  شکل های  زیر  مشخص می کند که تابع ocr نمی تواند کپچا را تشخیص دهد. <br/>

</div>
    
    

out1=![out](tash false.JPG)

out2=![out](ta.JPG)

out3=![out](tc.JPG )

out4=![out](t2.JPG)


