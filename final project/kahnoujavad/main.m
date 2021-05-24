clc;
close all;
clear all;
Dir = 'd:\image-processing-class\final project\kahnoujavad\data\';
file = fullfile(Dir,'*.txt');
Files = dir(file);
data = zeros(25,25,length(Files));
for k = 1 : length(Files)
    base = Files(k).name;
     filefull = fullfile(Files(k).folder, base);
    fprintf(1, 'Now read %s\n', filefull);
    img = dlmread(filefull);    
    data(:,:,k)=img(:,:);
end
data = uint8(data);

for p=1:1
   data_count = randi([2 8]);
    width = 100; 
    height = 100; 
    capcha_data = [randi([1 26],1,data_count,'uint8');];
    capcha_data = uint8(capcha_data);
    [data_Height,data_Width]=size(data(:,:,1));
    captcha_img = zeros(data_Height,data_Width*data_count);
    for i = 1 : data_count
        temp = Rotate(data(:,:,capcha_data(i)),randi([-45 45]));
        temp = Rand(temp,2,10,10,500,5);
        for x =1 : data_Width
            for y =1 : data_Height
                captcha_img(x,y+(i-1)*25) = temp(x,y);
            end
        end
    end
    captcha_img = imresize(captcha_img, [height width*data_count]);
    captcha_img = SaltPapper(captcha_img,0.1,0.5);
    captcha_img = Rand(captcha_img,2,10,10,500,5);
    captcha_img = Rand(captcha_img,2,10,10,1500,5);
    imshow(captcha_img);    
end
ocr(captcha_img)