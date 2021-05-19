clc;
close all;
clear;
%%
result = cell(150,6);
result(1,:)={'Number','Captcha not modify','OCR1','Captcha','OCR','HumanGuess'};
for j = 1: size(result,1)
alphabet_count = randi([4,6]);
width = 300*alphabet_count;
height = 300;
captcha_alphabet = [ randi([1 62],1,alphabet_count,'uint8'); ];
captcha_alphabet = uint8(captcha_alphabet);
alphabet=get_alphabet();
captcha_image = zeros(size(alphabet(:,:,1)));

captcha_image = alphabet(:,:,captcha_alphabet(1,1));
captcha_image2 = alphabet(:,:,captcha_alphabet(1,1));


for i = 2 : alphabet_count
    captcha_image = [ captcha_image alphabet(:,:,captcha_alphabet(1,i)) ];
    captcha_image2 = [ captcha_image2 alphabet(:,:,captcha_alphabet(1,i)) ];
     [m ,n ] = size(captcha_image);
    captcha_image = rotate(captcha_image, m,n);  
end
%captcha_image = medfilt2(captcha_image);
captcha_image = noise(captcha_image);
captcha_image = imresize(captcha_image, [height width]);
captcha_image = insert_line(captcha_image, height ,width);

str = sprintf('%d ', j);
image = ['result\' str '.png'];
image2 = ['result2\' str '.png'];
figure(1);
imwrite(captcha_image,image)
imwrite(captcha_image2,image);
resulu_o=ocr(captcha_image);
result_Ocr = resulu_o.Text;
resulu_o2=ocr(captcha_image2);
result_Ocr2 = resulu_o2.Text;
figure(1);
imshow(im2bw(captcha_image, 0.3));
figure(2);
imshow(im2bw(captcha_image2, 0.3));
disp(num2str(j));
HumanGuess = input('What do you guess? ' , 's');

result(j+1,1) ={j};
result(j+1,2)= {captcha_image2};
result(j+1,3)= {resulu_o2};
result(j+1,4) ={captcha_image};
result(j+1,5) ={result_Ocr};
result(j+1,6) ={HumanGuess};


end
save('result.mat','result');