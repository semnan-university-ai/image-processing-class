function [ outCaptcha] = FunctionCaptcha(count,n)

numbers_count = count;
numbers=n;
width = 500;
height = 200;

captcha_numbers = [ round(rand(1, numbers_count) * 10) - 1 ];
captcha_numbers = uint8(captcha_numbers);

captcha_image = zeros(size(numbers(:,:,1)));
captcha_image = numbers(:,:,1);

for i = 2 : numbers_count
    if captcha_numbers(1,i) == 0
        captcha_numbers(1,i) = 1;
    end
	captcha_image = [ captcha_image numbers(:,:,captcha_numbers(1,i)) ];
end

captcha_image = imresize(captcha_image, [height width]);

 captcha_image = imresize(captcha_image, [height/2 width/2]);
 
 captcha_image = imnoise(captcha_image,'gaussian',0,0.025);
 
 captcha_image=imnoise( captcha_image ,'salt & pepper', 0.2 );
 captcha_image = imbinarize(captcha_image, 0.3);
 
 

 
  
 
  A=randi([-5,5]);  
  captcha_image= imrotate(captcha_image,A,'bilinear','crop');
  
  
 
 outCaptcha = captcha_image;

end