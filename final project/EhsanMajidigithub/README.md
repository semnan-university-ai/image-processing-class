# image-processing-class
image processing class - 992

## Information
* ##### Teacher: Dr. Farzin Yaghmaee - [Contact](mailto:f_yaghmaee@semnan.ac.ir)
* ##### TA : Amir Shokri - [Contact](mailto:amirshokri@semnan.ac.ir)

### Student Info :
* Full name : Ehsan Majidi
* github id : EhsanMajidigithub
* Email : ehsan.majidi.engineer@gmail.com
* Type : Majazi

#=================================================================
#=================================================================
#=================================================================
<div dir="rtl">

###### پروژه ی دانشجویان گروه ) 2مجازی <br/>


## برنامه ای که در تمرین شماره ی 10 در کلاس توسط بنده حل شده است را از پوشه ی class دانلود کنید و کارهای زیر را روی آن انجام دهید:<br/>


****
این برنامه شامل 3 تابع مجزا می باشد که اجرا توسط کد capta قابل اجرا است 
  
1. کاربرد تابع FunctionData  
  وظیفه این تابع که داده های عددی ما که شامل مقدار 0 تا 9 می باشد
  
</div>  

```matlab
  
function [ outnumber ] = FunctionData()

numbers(:,:,1) = dlmread("number\1.txt");
numbers(:,:,2) = dlmread("number\2.txt");
numbers(:,:,3) = dlmread("number\3.txt");
numbers(:,:,4) = dlmread("number\4.txt");
numbers(:,:,5) = dlmread("number\5.txt");
numbers(:,:,6) = dlmread("number\6.txt");
numbers(:,:,7) = dlmread("number\7.txt");
numbers(:,:,8) = dlmread("number\8.txt");
numbers(:,:,9) = dlmread("number\9.txt");
numbers(:,:,10) = dlmread("number\0.txt");

numbers = uint8(numbers);
outnumber = numbers;
end
 
  
```
***
<div dir="rtl">
شرح کدهای تابع FunctionDataشرح 
 </div>  
 
 <div dir="ltr">
function [ outnumber ] = FunctionData()  
   </div>  
  
  
</div>  
