clc;
close all;
clear;
function f = randomChange(numbers_count,imageSize,rotateRenge,padingRenge,nois,imgName)

num=uint8(load('num2.mat'));% num1 or num2


captcha_numbers =randi(10,[1 numbers_count]);
angels =randi(numbers_count,[1 numbers_count]);
captcha_numbers = uint8(captcha_numbers);
captcha_image = [];
% captcha_image = num(:,:,1);
padingRenge=padingRenge(randi(length(padingRenge),[1 numbers_count]));
for i = 1 : numbers_count
    
    img=num(:,:,captcha_numbers(1,i));
    img=padarray(img,padingRenge(i),0,'both');
    img=imrotate(img,rotateRenge(angels(i)));
    img=imresize(img,[128 128],'bicubic');
	captcha_image = [ captcha_image img ];
    
end
    captcha_image = imresize(captcha_image, imageSize,'bicubic');
    captcha_image=imnoise(captcha_image,'salt & pepper',nois);
%     imwrite(captcha_image,strjoin([string(imgName) '.jpg']));%for write image
    f = captcha_image;
end
numbers_count = 4; % count of number
size=[350 800];  %size of output put
rotateRenge=linspace(-40,40,numbers_count);% rotate angle
padingRenge=1:80;    %pad array
nois=0.05;  %solt & paper nois
i=1;
for i=1:150
    f=randomChange(numbers_count,size,rotateRenge,padingRenge,nois,i);    
end

 imshow(im2bw(f, 0.3)); %for num2
%  imshow(f); %for nim1
