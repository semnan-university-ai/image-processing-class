~~~
clc;
clear;
x=500;y=400;
X=zeros(x,y);
Y=zeros(x,4*y);
f=0;

for i=1:x
    for j=1:4*y
        Y(i,j)=0;
    end
end
r1 =randperm(23,4);
for k=1:4
for i=1:x
    for j=1:y
        X(i,j)=0;
    end
end
if(r1(k)==1)
   for i=10:x-10
    for j=10:y-10
        if(j>=0 && j<=100)
            X(i,j)=255;
        end
        if(j>=300 && j<=400)
            X(i,j)=255;
        end
         if(i>=0 && i<=100)
            X(i,j)=255;
         end
         if(i>=200 && i<=300)
            X(i,j)=255;
         end
    end
   end
end
%----------------------------------A
if(r1(k)==2)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100  )   
            X(i,j)=255;
        end
        if(i>=200 && i<=300)
            X(i,j)=255;
        end
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
        if(j>=0 && j<=130)
            X(i,j)=255;
        end
        if(j>=300 && j<=400 )
            X(i,j)=255;
        end
        
    end
   end
end
%==================B
if(r1(k)==3)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100  )   
            X(i,j)=255;
        end
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
        if(j>=0 && j<=100)
            X(i,j)=255;
        end
     end
   end
end
%---------------C

if(r1(k)==4)
   for i=10:x-10
    for j=10:y-10
       if( i>=0 && i<=100  )   
            X(i,j)=255;
        end
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
        if(j>=0 && j<=100)
            X(i,j)=255;
        end
        if(j>=300 && j<=400)
            X(i,j)=255;
        end
    end
   end
end
%-------------------------------------D
if(r1(k)==5)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100 )   
            X(i,j)=255;
        end
        if(i>=200 && i<=300)
            X(i,j)=255;
        end
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
        if(j>=0 && j<=100)
            X(i,j)=255;
        end
        
    end
   end
end

if(r1(k)==6)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100)   
            X(i,j)=255;
        end
         
        if(i>=200 && i<=300)
            X(i,j)=255;
        end
        if(j>=0 && j<=100)
            X(i,j)=255;
        end
     end
   end
end

if(r1(k)==7)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100)   
            X(i,j)=255;
        end
         
        if(i>=200 && i<=300 && j>200 && j<400)
            X(i,j)=255;
        end
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
        if(j>=0 && j<=100)
            X(i,j)=255;
        end
        if(i>=300 && i<=400 &&   j>=300 && j<=400)
            X(i,j)=255;
        end
        
    end
   end
end

if(r1(k)==8)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(j>=300 && j<=400)
            X(i,j)=255;
        end
        if(i>=200 && i<=300)
            X(i,j)=255;
        end
               
    end
   end
end
%-----------------------H
if(r1(k)==9)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100)   
            X(i,j)=255;
        end
         
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
        if(j>=150 && j<=250)
            X(i,j)=255;
        end
               
    end
   end
end
%--------------I




%-------------------J
if(r1(k)==10)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100)   
            X(i,j)=255;
        end
         
        if(i>=400 && i<=500 && j>200 && j<400)
            X(i,j)=255;
        end
        if(j>=300 && j<=400)
            X(i,j)=255;
        end
         if(i>=0 && i<=150 && j>0 && j<100)
            X(i,j)=255;
        end      
    end
   end
end
%--------------k
if(r1(k)==11)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(i>=0 && i<=100 && j>300 && j<400)
            X(i,j)=255;
        end
        if(i>=100 && i<=200 && j>200 && j<300)
            X(i,j)=255;
        end
         if(i>=200 && i<=300 && j>100 && j<200)
            X(i,j)=255;
         end  
        if(i>=300 && i<=400 && j>200 && j<300)
            X(i,j)=255;
        end   
        if(i>=400 && i<=500 && j>300 && j<400)
            X(i,j)=255;
        end   
    end
   end
end
%---------------L
if(r1(k)==12)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
         
               
    end
   end
end
%---------------M
if(r1(k)==13)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=50)   
            X(i,j)=255;
        end
         
        if(j>=350 && j<=400)
            X(i,j)=255;
        end
        if(i>=100 && i<=200 && j>50 && j<100)
            X(i,j)=255;
        end
         if(i>=200 && i<=300 && j>=100 && j<=150)
            X(i,j)=255;
         end  
         if(i>=300 && i<=400 && j>=150 && j<=200)
            X(i,j)=255;
         end  
        if(i>=200 && i<=300 && j>=200 && j<250)
            X(i,j)=255;
        end 
         if(i>=100 && i<=200 && j>250 && j<300)
            X(i,j)=255;
         end
        if(i>=0 && i<=100 && j>300 && j<350)
            X(i,j)=255;
        end
    end
   end
end
%--------------------N
if(r1(k)==14)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(j>=300 && j<=400)
            X(i,j)=255;
        end
        if(i>=100 && i<=200 && j>=100 && j<=200)
            X(i,j)=255;
        end
         if(i>=200 && i<=300 && j>=200 && j<=300)
            X(i,j)=255;
        end      
    end
   end
end
%-------------------O
if(r1(k)==15)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100 && i>100 && i<400)   
            X(i,j)=255;
        end
         
        if(j>=300 && j<=400 && i>100 && i<400)
            X(i,j)=255;
        end
        if(i>=0 && i<=100 && j>100 && j<300)
            X(i,j)=255;
        end
           
        if(i>=400 && i<=500 && j>100 && j<300)
            X(i,j)=255;
        end    
    end
   end
end
%-----------------P
if(r1(k)==16)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(i>=0 && i<=100)
            X(i,j)=255;
        end
        if(i>=200 && i<=300)
            X(i,j)=255;
        end
         if(j>=300 && j<=400 && i>0 && i<300)
            X(i,j)=255;
        end       
    end
   end
end
%----------------Q
if(r1(k)==17)
   for i=10:x-10
    for j=10:y-10
        if(i>=0 && i<=400 && j>0 && j<100)   
            X(i,j)=255;
        end
         
        if(i>=0 && i<=400 && j>200 && j<300 )
            X(i,j)=255;
        end
        if(i>0 && i<100 && j>0 && j<300)
            X(i,j)=255;
        end
         if(i>300 && i<400 && j>0 && j<300)
            X(i,j)=255;
         end 
        if(i>400 && i<500 && j>300 && j<400)
            X(i,j)=255;
        end   
    end
   end
end
%-----------------R
if(r1(k)==18)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(i>=0 && i<=100)
            X(i,j)=255;
        end
        if(i>=200 && i<=300)
            X(i,j)=255;
        end
         if(j>=300 && j<=400 && i>0 && i<300)
            X(i,j)=255;
         end 
        if(j>=200 && j<=300 && i>300 && i<400)
            X(i,j)=255;
        end
        if(j>=300 && j<=400 && i>400 && i<500)
            X(i,j)=255;
        end
    end
   end
end
%-----------------S
if(r1(k)==19)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100)   
            X(i,j)=255;
        end
         
        if(j>=0 && j<=100 && i>0 && i<300)
            X(i,j)=255;
        end
        if(i>=200 && i<=300)
            X(i,j)=255;
        end
           
        if(i>=200 && i<=500 && j>300 && j<400)
            X(i,j)=255;
        end    
        
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
    end
   end
end
%------------T
if(r1(k)==20)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=100)   
            X(i,j)=255;
        end
         
        if(j>=150 && j<=250)
            X(i,j)=255;
        end
                       
    end
   end
end
%--------------U
if(r1(k)==21)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(j>=300 && j<=400)
            X(i,j)=255;
        end
        if(i>400 && i<500)
            X(i,j)=255;
        end
               
    end
   end
end
%-----------------------V
if(r1(k)==22)
   for i=10:x-10
    for j=10:y-10
        if( i>=0 && i<=300 && j>0 && j<100)   
            X(i,j)=255;
        end
         
        if(i>=0 && i<=300 && j>300 && j<400)
            X(i,j)=255;
        end
        if(i>=300 && i<400 && j>100 && j<300)
            X(i,j)=255;
        end
          if(i>=400 && i<500 && j>150 && j<250)
            X(i,j)=255;
        end     
    end
   end
end
%--------------------W
if(r1(k)==23)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(j>=300 && j<=400)
            X(i,j)=255;
        end
        if(i>=400 && i<=500)
            X(i,j)=255;
        end
         if(i>=300 && i<=400 && j>150 && j<250)
            X(i,j)=255;
        end       
    end
   end
end

%--------------X
if(r1(k)==24)
   for i=10:x-10
    for j=10:y-10
        if( j>=0 && j<=100 &&  i>0 && i<100)   
            X(i,j)=255;
        end
         
        if(j>=300 && j<=400 &&  i>0 && i<100)
            X(i,j)=255;
        end
        if(i>=100 && i<=200 && j>110 && j<290)
            X(i,j)=255;
        end
         if(i>=200 && i<=300 && j>110 && j<290)
         X(i,j)=255;
        end    
        if(i>=300 && i<=400 && j>0 && j<100)
            X(i,j)=255;
        end
        if(i>=300 && i<=400 && j>300 && j<400)
            X(i,j)=255;
        end
    end
   end
end
%-----------------Y
if(r1(k)==25)
   for i=10:x-10
    for j=10:y-10
        if( i>0 && i<200 && j>=0 && j<=100)   
            X(i,j)=255;
        end
         
        if(i>0 && i<200 && j>=300 && j<=400)
            X(i,j)=255;
        end
        if(i>=200 && i<=300 &&j>=100 && j<=300 )
            X(i,j)=255;
        end
         if(i>=300 && i<=500 &&j>=150 && j<=250)
            X(i,j)=255;
        end      
    end
   end
end
%---------------Z
if(r1(k)==26)
   for i=10:x-10
    for j=10:y-10
        if( i>0 && i<100)   
            X(i,j)=255;
        end
         
        if(i>400 && i<500)
            X(i,j)=255;
        end
        if(i>=100 && i<=200 && j>=300 && j<=400 )
            X(i,j)=255;
        end
         if(i>=200 && i<=300 && j>=200 && j<=300)
            X(i,j)=255;
         end  
        if(i>=300 && i<=400 && j>=100 && j<=200)
            X(i,j)=255;
        end 
    end
   end
end
%------------------------
for i=10:500
    for j=10:399
        if (k==1)
            Y(i,j)=X(i,j);
        end
        if (k==2)
            Y(i,j+400)=X(i,j);
        end
        if (k==3)
            Y(i,j+800)=X(i,j);
        end
        if (k==4)
            Y(i,j+1200)=X(i,j);
        end
    end
end
end

figure(1);
imshow(Y);
~~~
![CamelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/19/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AA%D9%85%D8%B1%DB%8C%D9%86%2019.PNG)
