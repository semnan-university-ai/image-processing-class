clc;
clear;
tasvir=zeros(5);
tasvir=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\airplane.png");
tasvir=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\baboon.png");
tasvir=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\barbara.png");
tasvir=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\boat.png");
tasvir=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\fruits.png");
tasvir=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\goldhill.png");
for f=1:4
for g=1:6
 X=tasvir(g);
figure,
imshow(X);
 
        
%X=im2gray(X);
 indexNum = size(X);
for i=512-100:512
     
    for j=512-100:512
        
        y(i-411,j-411)=X(i,j);
        
    end
end
z=[y y y y y;y y y y y ;y y y y y;y y y y y;y y y y y;];

end
end
imshow(z);