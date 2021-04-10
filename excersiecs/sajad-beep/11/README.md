~~~
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
~~~
![camelCase]( https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/11/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AA%D9%85%D8%B1%DB%8C%D9%86%2011.PNG)
