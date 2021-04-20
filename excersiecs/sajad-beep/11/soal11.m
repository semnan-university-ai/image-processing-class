clc;
clear;
I = imread('C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\airplane.png');
I=im2gray(I);
sizeI=size(I);
p=20;
for d=1:p
f=uint8(512*rand(sizeI(1),sizeI(2)));
 for i=1:sizeI(1)
      for j=1:sizeI(2)
          if(I(i,j)==f(i,j))
               h=randperm(2,1);
                      if(h==1)
                          I(i,j)=0;
                      else
                          I(i,j)=255;
                      end
          end
      end
 end
end
 imshow(I);
         