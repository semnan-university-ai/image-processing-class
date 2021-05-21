clc;
close all;
clear;
width = 200;
height = 200;
for i=1 :150
alphabet_count=5;   
k=zeros(height ,width);
[a h]=fun1(alphabet_count,width,height);
captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
captcha_alphabet = uint8(captcha_alphabet);
captcha_image=im(alphabet_count,captcha_alphabet);
 captcha_image = imresize(captcha_image, [h width]);
 k(a+1:a+h,:)=captcha_image;
 k=im2bw(k, 0.3);
 imshow(k);
ImageToSave = strcat(num2str(i),'.png');
imwrite(k,ImageToSave)
end
