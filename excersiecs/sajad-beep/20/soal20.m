clc;
clear;
x=500;y=400;
X=zeros(x,y);
Y=zeros(x,4*y);

for i=1:x
    for j=1:4*y
        Y(i,j)=0;
    end
end
r1 =[4 3 2 1];
for k=1:4

for i=1:x
    for j=1:y
        X(i,j)=0;
    end
end
 
if(r1(k)==1)
   for i=10:x
    for j=10:y
        if(j>=350 && j<=400 && i>0 && i<200)
            X(i,j)=255;
        end
        if(j>=250 && j<=300 && i>0 && i<200)
            X(i,j)=255;
        end
        if(j>=150 && j<=200 && i>0 && i<200)
            X(i,j)=255;
        end
         if(i>=200 && i<=250)
            X(i,j)=255;
         end
         
    end
   end
end

if(r1(k)==2)
   for i=10:x
    for j=10:y
        if(j>=0 && j<=100 && i>100 && i<150)
            X(i,j)=255;
        end
        if(j>=100 && j<=200 && i>0 && i<100)
            X(i,j)=255;
        end
        if(j>=200 && j<=300 && i>100 && i<200)
            X(i,j)=255;
        end
          
         if(i>=200 && i<=250)
            X(i,j)=255;
         end
         if(j>=250 && j<=300 && i>300 && i<350)
            X(i,j)=255;
        end
         
    end
   end
end

if(r1(k)==3)
   for i=10:x
    for j=10:y
        if(j>=150 && j<=200 && i>0 && i<200  )
            X(i,j)=255;
        end
          if(i>=200 && i<=250 && j>150)
            X(i,j)=255;
          end
         
    end
   end
end

if(r1(k)==4)
   for i=10:x
    for j=10:y
        if(j>=100 && j<=200 && i>0 && i<50)
            X(i,j)=255;
        end
        if(j>=200 && j<=300 && i>50 && i<100)
            X(i,j)=255;
        end
        if(j>=300 && j<=400 && i>100 && i<200)
            X(i,j)=255;
        end
          
         if(j>=200 && j<=300 && i>200 && i<250)
            X(i,j)=255;
         end
         if(j>= 100 && j<=200 && i>250 && i<300)
            X(i,j)=255;
         end
         
    end
   end
end
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