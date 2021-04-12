~~~
clc;
clear;
X = imread('C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\airplane.png');
X=im2gray(X);
im_size=size(X);
for i=1:im_size(1,1)
    for j=1:im_size(1,2)
        X(i,j)=255-X(i,j);
    end 
end
imshow(X);
image_yekdahom=imnoise(X,'salt & pepper',0.1);
image_dodahom=imnoise(X,'salt & pepper',0.2);
image_sedahom=imnoise(X,'salt & pepper',0.3);
image_chardahom=imnoise(X,'salt & pepper',0.4);
image_panjdahom=imnoise(X,'salt & pepper',0.5);
image_shishdahom=imnoise(X,'salt & pepper',0.6);
image_hafdahom=imnoise(X,'salt & pepper',0.7);
image_nohdahom=imnoise(X,'salt & pepper',0.9);
 sum=zeros(1,8);
sum(1,1) =round(mean(mean(image_yekdahom)));
 sum(1,2) =round(mean(mean(image_dodahom)));
 sum(1,3) =round(mean(mean(image_sedahom)));
 sum(1,4) =round(mean(mean(image_chardahom)));
 sum(1,5) =round(mean(mean(image_panjdahom)));
 sum(1,6) =round(mean(mean(image_shishdahom)));
 sum(1,7) =round(mean(mean(image_hafdahom)));
sum(1,8) =round(mean(mean(image_nohdahom)));
 disp(sum);
~~~
## ورودی تمرین 13
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/13/%D9%88%D8%B1%D9%88%D8%AF%DB%8C%20%D8%AA%D9%85%D8%B1%DB%8C%D9%86%2013.PNG)
## خروجی تمرین 13
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/13/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AA%D9%85%D8%B1%DB%8C%D9%8613.PNG)
