<div dir ="rtl">
  
  <h1>  تمرین هشتم</h1>
  </div>
  
  <div dir ="rtl"> 
  خواندن عکس و تبدیل به عکس خاکستری
  </div>
  
  ````
  img=imread('airplane.png');
  img1 = rgb2gray(img);
  
  ````
  
  <div dir ="rtl">
  بدست آورن اندازه عکس
  </div>
  
  ````
  [x,y]= size(img1); 
  
 ````
 
 <div  dir ="rtl"> 
  
مشخص نمودن درجه و قرار دادن آن در متغیر P</br>
 لازم به ذکر است به این دلیل از متغیر if استفاده کرده ام که در subplot بتوانم نمایش دهم هر 4 زاویه را.
 
</div>
 
 ````
 
 for p = 1 :4
    if p == 1
        angle = 45;
    elseif p==2
        angle =90;
    elseif p==3
         angle =120;
    elseif  p==4
         angle = 180;
    end

 
 ````
 
  <div  dir ="rtl"> 
  
تبدیل نمودن درجه به رادیان 
</div>

````
rads=2*pi*angle/360;  


````

 <div  dir ="rtl"> 
  
بدست آورن مختصات وسط تصویر ورودی و خروجی ایجاد تصویر خروجی و  
</div>


````
out=uint8(zeros([m ,n]));
row= m;
col = n;
x_out=ceil(row/2);                                                            
y_out=ceil(col/2);

midx=ceil((size(out,1))/2);
midy=ceil((size(out,2))/2);

````

 <div  dir ="rtl"> 
  هر پیکسل دوران داده می شود و در ماتریس خروجی نمایش داده می شود.  
</div>


````
for i=1:size(out,1)
    for j=1:size(out,2)                                                       

         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+x_out;
         y=round(y)+y_out;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
              out(i,j)=img(x,y);  
         end

    end
end
subplot (2,4,p), imshow(out);
end

subplot(2,4,5:6), imshow(img);
subplot(2,4,7:8), imshow(img1);
````


