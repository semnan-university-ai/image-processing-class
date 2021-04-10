# لوزی مستطیل و مربع
~~~
clc;
clear;
X=zeros(500,500);
a=90;  f=0; b=40;
 for i=1:500
    for j=1:500
        X(i,j)=255;
    end 
 end

for i=1:500
    for j=1:500
         
        if (i==30 || i==(30+a))
             if (j>30 && j<30+a)
                 X(i,j)=0;
             end
       
        elseif (j==30 || j==(30+a))
             if (i>30 && i<30+a)
                 X(i,j)=0;
              end
        end 
         if(j==250 && i<50)
         X(i,250-f)=0;
         X(i,f+250)=0;
         f=f+1;
        end
        if(j==250 && i>50 && i<100)
             X(i,f+250)=0;
             X(i,250-f)=0;
             f=f-1;
        end
         if(j==90 && i>210 && i<250)
         X(i,250-f)=0;
          X(i,f+250)=0;
          f=f+1;
        end
        if(i==250 && j>(250-f) && j<(250+f))
            X(i,j)=0;
        end
        
        
        if (i==300 || i==(300+b))
             if (j>300 && j<300+a)
                 X(i,j)=0;
             end
       
        elseif (j==300 || j==(300+a))
             if (i>300 && i<300+b)
                 X(i,j)=0;
              end
        end
     end
end
    
 figure(1),
imshow(X);
for i=1:500
    for j=1:500
        
    end
end

figure(2),
imshow(X);
~~~
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/7/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AA%D9%85%D8%B1%DB%8C%D9%86%207.PNG)
