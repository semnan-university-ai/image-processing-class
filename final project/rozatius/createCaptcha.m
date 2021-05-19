function [outText,outImage] = createCaptcha(matrixData,numberChar,move,rotate,destortion,dline,noisesmall,noisebig)
%CREATECAPTCHA function creates an image of the captcha
%   Detailed explanation goes here
%defullt values for parameter is true
if nargin<3
  move = true;
  rotate = true;
  destortion = true;
  dline = true;
  noisesmall = true;
  noisebig = true;
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
        A=randi([-20,20]); %random rotate 
        numbers_f= imrotate(numbers_f,A,'bilinear','crop');
    end
    
	captcha_image(1:25,(i*c)-24:c*i) = numbers_f(:,:);
end

if noisebig %big noise
    captcha_image = imresize(captcha_image, [height/2 width/2]);
    captcha_image=imnoise( captcha_image ,'salt & pepper', 0.02 );
end

captcha_image = imresize(captcha_image, [height width]);
if noisesmall %smal noise
    captcha_image=imnoise( captcha_image ,'salt & pepper', 0.05 );
end

if dline % draw line
    for i = 1:randi([2,4])
        captcha_image = rgb2gray(insertShape(captcha_image,'Line',[0 randi([1,height]) width randi([1,height])],'Color', [255,255,255],'Opacity',0.7,'LineWidth',randi([1,3])));
    end
end    

captcha_image = imbinarize(captcha_image, 0.3);
outImage = captcha_image;

end

