clc;
close all;
clear all;
img1=imread('img\zelda.png');
img1=imresize(img1,[250,250]);
s=[];
avg=0;
imshow(img1);

for i=125:141
    for j=100:127
       s=[img1(i-1, j-1), img1(i-1, j), img1(i-1, j+1) , img1(i, j-1) , img1(i, j) , img1(i-1, j+1) , img1(i+1, j-1), img1(i+1, j), img1(i+1, j+1)];
       avg=mean(s,'all');
   img1(i,j)=avg;
  end 
       
 end
 for i=125:141
    for j=145:170
       s=[img1(i-1, j-1), img1(i-1, j), img1(i-1, j+1) , img1(i, j-1) , img1(i, j) , img1(i-1, j+1) , img1(i+1, j-1), img1(i+1, j), img1(i+1, j+1)];
       avg=mean(s,'all');
       img1(i,j)=avg;
    end 
 end
 for i=125:141
    for j=100:127
       s=[img1(i-1, j-1), img1(i-1, j), img1(i-1, j+1) , img1(i, j-1) , img1(i, j) , img1(i-1, j+1) , img1(i+1, j-1), img1(i+1, j), img1(i+1, j+1)];
       avg=mean(s,'all');
   img1(i,j)=avg;
  end 
       
 end      
for i=125:141
    for j=100:127
       s=[img1(i-1, j-1), img1(i-1, j), img1(i-1, j+1) , img1(i, j-1) , img1(i, j) , img1(i-1, j+1) , img1(i+1, j-1), img1(i+1, j), img1(i+1, j+1)];
       avg=mean(s,'all');
   img1(i,j)=avg;
  end 
       
end
 for i=125:141
    for j=100:127
       s=[img1(i-1, j-1), img1(i-1, j), img1(i-1, j+1) , img1(i, j-1) , img1(i, j) , img1(i-1, j+1) , img1(i+1, j-1), img1(i+1, j), img1(i+1, j+1)];
       avg=mean(s,'all');
   img1(i,j)=avg;
  end 
       
 end
  for i=125:141
    for j=145:170
       s=[img1(i-1, j-1), img1(i-1, j), img1(i-1, j+1) , img1(i, j-1) , img1(i, j) , img1(i-1, j+1) , img1(i+1, j-1), img1(i+1, j), img1(i+1, j+1)];
       avg=mean(s,'all');
       img1(i,j)=avg;
    end 
  end
  for i=125:141
    for j=145:170
       s=[img1(i-1, j-1), img1(i-1, j), img1(i-1, j+1) , img1(i, j-1) , img1(i, j) , img1(i-1, j+1) , img1(i+1, j-1), img1(i+1, j), img1(i+1, j+1)];
       avg=mean(s,'all');
       img1(i,j)=avg;
    end 
  end
  for i=125:141
    for j=145:170
       s=[img1(i-1, j-1), img1(i-1, j), img1(i-1, j+1) , img1(i, j-1) , img1(i, j) , img1(i-1, j+1) , img1(i+1, j-1), img1(i+1, j), img1(i+1, j+1)];
       avg=mean(s,'all');
       img1(i,j)=avg;
    end 
 end
figure,
imshow(img1);
      
