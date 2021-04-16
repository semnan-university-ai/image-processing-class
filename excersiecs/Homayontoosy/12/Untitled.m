clc;
clear;
close all;

tasvir = 'd:\street.jpg';

% khandan tasvir 
image = imread(tasvir);

% tabdil tasvir e khakestari
im = rgb2gray(image);
imshow(im);
[m,n]=size(im); 


% emal filter mean roye tasvir
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

% emal filter median bar tasvir 
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

% emal noise namak felfel bar tasvir rgb2gray
x = randi([0 ,255] , m ,n);
im(x<=0+2)=0;
im(x>=255-2)=255;
imshow(im);


% mohasebe pixel khoroji az filterha ba adad sahih

mean_im = round(mean(mean(im)));
mean_noise = round(mean(mean(im)));
mean_avg = round(mean(mean(image_result)));
mean_med = round(mean(mean(image_result2)));



% namayesh pixel khoroji mean
display(mean_im);     

% namayesh pixel khoroji filter mean
display(mean_avg);

% namayesh pixel khoroji filter mean
display(mean_med);

% namayesh pixel khoroji noise namak felfel
display(mean_noise);



% namayesh tasvir asli
subplot(3,4,1);
imshow(image);title('main image'); 


% namayesh tasvir ba filter mean
subplot(3,4,2);
imshow(image_result);title('mean filter');


% namayesh tasvir ba filter median 
subplot(3,4,3);
imshow(image_result2);title('median filter');


% namayesh tasvir ba noise namak & felfel
subplot(3,4,4);
imshow(im);title('noise image');

% help: ba estefade az site matlab & code student