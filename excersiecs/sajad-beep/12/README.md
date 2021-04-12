~~~
clc;
clear;
X = imread('C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\airplane.png');
X=im2gray(X);
sizeI=size(X);
p=20;
for d=1:p
f=uint8(512*rand(sizeI(1),sizeI(2)));
 for i=1:sizeI(1)
      for j=1:sizeI(2)
          if(X(i,j)==f(i,j))
               h=randperm(2,1);
                      if(h==1)
                          X(i,j)=0;
                      else
                          X(i,j)=255;
                      end
          end
      end
 end
end

figure(1),
imshow(X);
J = X;
image_size=size(J);
image_result_mean=zeros(image_size(1,1),image_size(1,2),"uint8");
image_result_median=zeros(image_size(1,1),image_size(1,2),"uint8");

for i=1:image_size(1,1)
    for j=1:image_size(1,2)
        if (i==1 && j==1)
             result  =[J(i,j) J(i,j+1) J(i+1,j) J(i+1,j+1)];
        elseif(i==image_size(1,1) && j==1)
            result  = [J(i,j) J(i-1,j) J(i,j+1) J(i-1,j+1)];
        elseif(i==1 && j==image_size(1,2))
            result =[J(i,j) J(i,j-1) J(i+1,j-1) J(i+1,j)];
        elseif(i==image_size(1,1) && j==image_size(1,2))
              result =[J(i,j) J(i-1,j-1) J(i-1,j) J(i,j-1)];
        elseif(i==1)
              result =[J(i,j) J(i+1,j-1) J(i+1,j) J(i+1,j+1)];
        elseif(j==1)
               result=[J(i,j) J(i-1,j+1) J(i,j+1) J(i+1,j+1)];
        elseif(i==image_size(1,1))
              result =[J(i,j) J(i-1,j-1) J(i-1,j) J(i-1,j+1)];
        elseif(j==image_size(1,2))
              result = [J(i,j) J(i-1,j-1) J(i,j-1) J(i+1,j-1)];
        else
           result=[J(i,j) J(i-1,j-1) J(i-1,j) J(i-1,j+1) J(i,j-1) J(i,j+1) J(i+1,j-1) J(i+1,j) J(i+1,j+1)];  
        end
        image_result_mean(i,j)=uint8(round(mean(result)));
        image_result_median(i,j)=uint8(round(median(result)));
        result=0;
    end 
end
figure(3),
imshow(image_result_mean);
figure(4),
imshow(image_result_mean);
~~~
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/12/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AA%D9%85%D8%B1%DB%8C%D9%86%2012.PNG)
