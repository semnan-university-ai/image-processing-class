%# read the image
clc
clear all
close all
numbers={'one','two','three','four','five','six','seven','eight','nine','zero'};
r= floor(10*rand(1,3));
if r(1)==0
    kap1='zero';
else
kap1= numbers{r(1)};
end
if r(2)==0
    kap2='zero';
else
kap2= numbers{r(2)};
end
if r(3)==0
kap3= 'zero'
else
   kap3= numbers{r(3)};
end
ext='.png';
subplot(131)
file1=strcat(kap1,ext);
f1=imread(file1);
imshow(f1)

subplot(132)
file2=strcat(kap2,ext);
f2=imread(file2);
imshow(f2)

subplot(133)
file3=strcat(kap3,ext);
f3=imread(file3);
imshow(f3)

x = input('What is first number:');
y = input('What is second number:');
z = input('What is third number:');

if (x)==r(1) && (y)==r(2) && (z)==r(3)
    disp('Correct Capcha')
else
    disp('Incorrect Capcha')
end