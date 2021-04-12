~~~
clc;
clear;
I = imread('circuit.tif');
figure(1),
imshow(I);
J = imcrop(I,[0 0 200 190]);
figure(2),
imshow(J);
x=200;y=190;
X=zeros(x,y);
for i=1:x
    for j=1:y
        X(i,j)=I(i,j);
    end
end
figure(3),
imshow(uint8(X));
~~~
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/9/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AA%D9%85%D8%B1%DB%8C%D9%86%209.PNG)
