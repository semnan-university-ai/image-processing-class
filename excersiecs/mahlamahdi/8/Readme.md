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
  
   دریافت درجه از کاربر
 </div>
 
 ````
 
 angle= input("Enter 45, 90, 120 or 180:");
 
 ````
 
