function [outText,outImage] = Captcha(matrixData,numberChar,move,rotate,destortion)
%CREATECAPTCHA Summary of this function goes here
%   Detailed explanation goes here
%defullt values for parameter
if nargin<3
  move = true;
  rotate = true;
  destortion = true;
 end

numbers_count = numberChar;
numbers =matrixData;
width = 500;
height = 200;

captcha_numbers =  round(rand(1, numbers_count) * 9); % matrix of random 4 number
outText = strjoin(string(captcha_numbers),''); %captcha number
captcha_numbers = uint8(captcha_numbers);
[r,c]=size(numbers(:,:,1));
captcha_image = zeros(r,c*numbers_count,'uint8');
for i = 1 : numbers_count
    if captcha_numbers(1,i) == 0
        captcha_numbers(1,i) = 10;
    end
    
    numbers_f=zeros(r,c,'uint8');
    if move
        B=randi([1,7]); %random move
    else
        B=3;
    end
    numbers_f(1+B:25-7+B,1:25-7)=numbers(4:r-4,4:c-4,captcha_numbers(1,i));
    if destortion
        Q=randi([8,16]); %random destortion D
        P=randi([-1,1]); %random destortion V
        numbers_f(Q:25,2:23)=numbers_f(Q:25,2+P:23+P);
        numbers_f(2:23,Q:25)=numbers_f(2+P:23+P,Q:25);
    end
    if rotate
        A=randi([-15,15]); %random rotate 
        numbers_f= imrotate(numbers_f,A,'bilinear','crop');
    end
    
	captcha_image(1:25,(i*c)-24:c*i) = numbers_f(:,:);
end


    captcha_image = imresize(captcha_image, [height width]);

captcha_image = imbinarize(captcha_image, 0.3);
outImage = captcha_image;

end

