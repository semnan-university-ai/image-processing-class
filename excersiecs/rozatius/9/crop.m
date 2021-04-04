

clc;clear;close all;
img=rgb2gray(imread("../../../benchmark/cat.png"));
row1=100;row2=300;col1=100;col2=300;


%method 1
drows=(row2-row1);
dcols=((col2-col1));
imgcrop=zeros(drows,dcols,'uint8');

for i = 1:drows
    for j = 1:dcols
        imgcrop(i,j)=img((row1+i),(col1+j));
    end
end
subplot(1,2,1),imshow(imgcrop),title('corp method 1');

%method 2
subImage = img(row1:row2, col1:col2, :);

subplot(1,2,2),imshow(subImage),title('corp method 2');
