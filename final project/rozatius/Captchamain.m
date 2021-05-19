clc;
close all;
clear;

rocr = zeros(1,150,'logical');

%load chacters 0-9
numbers=loadData('data',1);

%create chaptcha
image_path = 'output\';
[~, message, messageid] = rmdir(image_path, 's');
[status, msg, msgID] = mkdir(image_path);
rng(100)
for i = 1:150
    [txtCaptcha,imgCaptcha] = createCaptcha(numbers,4,true,true,true,true,true,true); %create
    
    %detection by ocr
    [textocr,ocrreault,ocrimg] = ocrDetect(txtCaptcha, imgCaptcha);
    rocr(i) = ocrreault;

    imwrite(imgCaptcha, image_path+string(i)+'-('+txtCaptcha+').png'); %save in image folder
    %imwrite(ocrimg, image_path+string(i)+'-('+txtCaptcha+')R.png'); %save in image folder
    
    subplot(15,10,i),imshow(imgCaptcha,'Interpolation','bilinear'),title(txtCaptcha); %show 150 captcha
    %subplot(15,10,i),imshow(ocrimg,'Interpolation','bilinear'),title(txtCaptcha+'->'+textocr); %show 150 captcha
end
set(gcf,'units','pixels','position', [0 0 1000 1000]);
exportgraphics(gcf,"result.jpg",'Resolution',300);

%analysis 
lbl = categorical({'Not detected','detected'});
nft=[sum(rocr == 0) , sum(rocr == 1)];
figure;bar(lbl,nft);title('Bar');ylabel('number');saveas(gcf,"Barchart.png")


