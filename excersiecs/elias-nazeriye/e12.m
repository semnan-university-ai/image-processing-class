%The answer to this exercise is copied from the solution method of other students


clc;
clear;
close all;

address = 'e3.png';

image = imread(address);
im = rgb2gray(image);
imshow(im);

[m,n]=size(im); 

%salt & pepper
x = randi([0 ,255] , m ,n);
im(x<=0+2)=0;
im(x>=255-2)=255;
imshow(im);

%mean filter
image_result = zeros(m, n,'uint8');


for i = 1 : m
    for j = 1 : n
        rmin = max(1 , i-1);
        rmax = min(m , i+1);
        cmin = max(1,j-1);
        cmax = min(n , j+1);
        temp = im(rmin : rmax , cmin : cmax);
        image_result(i,j) = mean(mean(temp));
    end
end


%median filter
image_result2 = zeros(m, n,'uint8');
for i = 1 : m
    for j = 1 : n
        rmin = max(1 , i-1);
        rmax = min(m , i+1);
        cmin = max(1,j-1);
        cmax = min(n , j+1);
        temp = im(rmin : rmax , cmin : cmax);
        image_result2(i,j) = median(median(temp));
    end
end

%calculate
mean_im = round(mean(mean(im)));
mean_noise = round(mean(mean(im)));
mean_avg = round(mean(mean(image_result)));
mean_med = round(mean(mean(image_result2)));

%show
display(mean_im);
display(mean_noise);
display(mean_avg);
display(mean_med);

%show
subplot(2,2,1);
imshow(image);title('main image');

subplot(2,2,2);
imshow(im);title('noise image');

subplot(2,2,3);
imshow(image_result);title('mean filter');

subplot(2,2,4);
imshow(image_result2);title('median filter');
