function [ out] = creat(alphabet,count)


captcha_numbers = [ round(rand(1, count) * 10) - 1 ];
captcha_numbers = uint8(captcha_numbers);

captcha_image = zeros(size(alphabet(:,:,1)));
captcha_image = alphabet(:,:,1);

for i = 2 : count
    if captcha_numbers(1,i) == 0
        captcha_numbers(1,i) = 1;
    end
    
	captcha_image = [ captcha_image alphabet(:,:,captcha_numbers(1,i)) ];
    
end
out = captcha_image;

end