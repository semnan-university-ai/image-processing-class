clc;
close all;
clear;

 alphabet=loaddata();
 
     a=randi([0 50]);
     a
J = imrotate(alphabet,a,'bilinear');

alphabet = uint8(J);
%%%%%%%%%%%%%%%%%%%%%%%%
for j=1 :10

alphabet_count = randi([1 10]);
width = randi([300 500]);
height = randi([150 250]);
     

captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8') ];

captcha_alphabet = uint8(captcha_alphabet);


captcha_image = zeros(size(alphabet(:,:,1)));

%captcha_image = alphabet(:,:,1);

%%%%
for i = 1 : alphabet_count
    if captcha_alphabet(1,i) < 1
        captcha_alphabet(1,i) = 1;
    end
    if captcha_alphabet(1,i) > 26
        captcha_alphabet(1,i) = 26;
    end
    
    
	captcha_image  = [ captcha_image alphabet(:,:,captcha_alphabet(1,i)) ];
    
end
%%%%%%%%%%%%%%

captcha_image = imresize(captcha_image, [height width]);
b=rand()/10
captcha_image=imnoise(captcha_image,'salt & pepper',b);
figure;
imshow(im2bw(captcha_image, 0.3));

%  end

captcha_alphabet


%########################################




ocr(captcha_image)
end

for k=1:10
    saveas(figure(k),fullfile('H:\arshd daneshga\tetm 2\pardazesh tasvir\t1\proge19\result',['figure' num2str(k) '.jpg']));
end
