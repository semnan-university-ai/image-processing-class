clc;
close all;
clear;
width = input('vared kon tool tasvir ra:');
height = input('vared kon arz tasvir ra:');
mkdir 'captcha'
for i=1 :150
 alphabet_count=randi([4,6]);     
% alphabet_count=input('vared kon tedad horoof ra:');
k=zeros(height ,width);
[a h]=hgh(alphabet_count,width,height);
captcha_alphabet = [ randi([1 26],1,alphabet_count,'uint8'); ];
captcha_alphabet = uint8(captcha_alphabet);

captcha_image=img(alphabet_count,captcha_alphabet);
 captcha_image = imresize(captcha_image, [h width]);
 k(a+1:a+h,:)=captcha_image;

 k=im2bw(k, 0.3);
 imshow(k);


 alpha=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
ocr_result=ocr(k);
recognizedText =ocr_result.Text;
  orginal_text=alpha(captcha_alphabet);
 image_name=strcat(num2str(i),'.png');
%  image_name=strcat(num2str(orginal_text),'.png');
imwrite(k,image_name);
movefile(image_name,'captcha');

%  A = {(recognizedText),(orginal_text)};
A = {(recognizedText),(orginal_text)};
sheet = 1;
xlRange = strcat('A',num2str(i+1));
xlswrite('result.xls',A,sheet,xlRange)
end
