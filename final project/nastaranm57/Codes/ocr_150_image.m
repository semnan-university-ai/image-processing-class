
clc;
close all;
clear;

address = 'C:\Users\kam\Desktop\New folder (4)\Save image\';
save_adress = 'C:/Users/kam/Desktop/New folder (4)/Save image/Save_Filtered_image/';

alphabet_count = 4;
width = 512;
height = 256;

method = {'nearest', 'bilinear', 'bicubic'};
MTD=3;
angle = 0;

Filter_size = 3;

D = dir(address);

image_count = 1;
image_name = cell(1,150);
Txt_Pred = cell(1,150);

Correct_Ocr_Prediction = 0;

for i=1 : size(D,1)
    Name = D(i).name;
    find = strfind(Name, '.png');
    empty = isempty(find);
    num = isnumeric(find);
    if (empty == 0) && (num == 1)
        Image_Name = strsplit(Name,'.'); 
        image_name{image_count} = Image_Name{1};
        
        img = imread(strcat(address,Name));
        
        NR_captcha_image_r = Filter_Captcah_Image(height, width, alphabet_count, method, img,Filter_size);
       
        bw = .5;
        Img = im2bw(NR_captcha_image_r, bw);
        
%         image_type = '.png';
%         imwrite(Img, strcat(save_adress,Image_Name{1},image_type));
        
        txt = ocr(Img);
        TXT = txt.Text;
        
        Strtxt = '';
        for s=1:numel(TXT)
            Strtxt = strcat(Strtxt,TXT(s));
        end
        
        Txt_Pred{image_count} = Strtxt;
        
        display(image_count)
        
        image_count = image_count + 1;
        
        if strcmpi(Strtxt,Image_Name{1})
            Correct_Ocr_Prediction = Correct_Ocr_Prediction+1;
        end
    end
end

Correct_Percent = 100*(Correct_Ocr_Prediction/150);
display('Correct_Percent (%): ')
display(Correct_Percent)

