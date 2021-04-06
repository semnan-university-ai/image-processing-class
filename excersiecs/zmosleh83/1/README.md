<div dir="rtl">
##تمرين شماره 1 
  ### کد:
  clear
clc
 
axis([1 13 1 13]);
a=1
 
for i=3:1:10
    
    for j=3:1:10
        
        if isequal(a,0)
            rectangle('Position',[j i 1 1], 'FaceColor',[.800 .800 .800])
            a=1;
        else
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0])
            a=0;
        end
        
    end
    
     if isequal(a,0)
            a=1;
     else
            a=0;
     end
     
end
 
<div dir="rtl">
  #### برسی کد:
  <div dir="rtl">
  1. 
  برنامه ی بالا دارای دو حلقه ی تودرتو برای رسم یک صفحه ی ۸ در ۸ می باشد<br/>
    کد فوق برگرفته از سایتhttps://camelcase.ir/میباشد. 
    <div dir="rtl">


