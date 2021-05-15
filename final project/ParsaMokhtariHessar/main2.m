clc;
close all;
clear;
myFolder = '..\..\excersiecs\arman-ariamehr\19\alphabet\';
filePattern1 = fullfile(myFolder,'*.txt');
theFiles = dir(filePattern1);
alphabet = zeros(25,25,length(theFiles));
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);
    % Now do whatever you want with this file name,
    image = dlmread(fullFileName);    
    alphabet(:,:,k)=image(:,:);
end
alphabet = uint8(alphabet);

for p=1:1
    alphabet_count = randi([2 8]);
    %size per cell
    width = 100; %height per cell
    height = 100; % width per cell

    captcha_alphabet = [randi([1 26],1,alphabet_count,'uint8');];
    captcha_alphabet = uint8(captcha_alphabet);
    %made your algorithem more efficeiet
    [Alphabet_Height,Alphabet_Width]=size(alphabet(:,:,1));
    captcha_image = zeros(Alphabet_Height,Alphabet_Width*alphabet_count);
    for i = 1 : alphabet_count
        temp = Rotation(alphabet(:,:,captcha_alphabet(i)),randi([-45 45]));
        temp = RandLine(temp,2,10,10,500,5);
        for x =1 : Alphabet_Width
            for y =1 : Alphabet_Height
                captcha_image(x,y+(i-1)*25) = temp(x,y);
            end
        end
    end
    captcha_image = RandLine(captcha_image,2,10,10,500,5);
    captcha_image = imbinarize(captcha_image,0.3);
    captcha_image = imresize(captcha_image, [height width*alphabet_count]);
    captcha_image = RandLine(captcha_image,2,10,10,1500,5);
    captcha_image = RandomShapes(captcha_image,10,2*alphabet_count);
    captcha_image = CustomSaltAndPepper(captcha_image,0.1,0.5);
    
    
    imshow(captcha_image);    
end


%ocr(captcha_image)