function [ captcha_image ] = creatCAP( numbers,numbers_count,width,height)


numbers = uint8(numbers);
for i=1:10
temp=moj(numbers,i);
    numbers(:,:,i)=temp(:,:);
end
captcha_numbers = randi([0 9],[1  numbers_count]);
captcha_image = zeros(size(numbers(:,1,1)));


for i = 1 : numbers_count
	captcha_image = [ captcha_image numbers(:,:,captcha_numbers(1,i)+1) ];
end

captcha_image = imresize(captcha_image, [height width]);
captcha_image=im2bw(captcha_image,0.3);
end

