clc;
close all;
clear;

address = 'C:\Program Files\Polyspace\R2019b\bin\prj\SaveImg\';
save_address = 'C:\Program Files\Polyspace\R2019b\bin\prj\SaveAdd\';

alph_count = 4;
wi = 512;
he = 256;

method = {'nearest', 'bilinear', 'bicubic'};
MTD=3;
angle = 0;

Filter_size = 3;

D = dir(address);

img_count = 1;
img_name = cell(1,150);
Txt_Pred = cell(1,150);

COP = 0;

for i=1 : size(D,1)
    Name = D(i).name;
    find = strfind(Name, '.png');
    empty = isempty(find);
    num = isnumeric(find);
    if (empty == 0) && (num == 1)
        Img_Name = strsplit(Name,'.'); 
        img_name{img_count} = Img_Name{1};
        
        img = imread(strcat(address,Name));
        
        filter_cap_img_r = Filter_Cap_Img(he, wi, alph_count, method, img,Filter_size);
       
        bw = .5;
        Img = imbinarize(filter_cap_img_r, bw);
        
%         img_type = '.png';
%         imwrite(Img, strcat(save_address,Img_Name{1},img_type));
        
        txt = ocr(Img);
        TXT = txt.Text;
        
        Strtxt = '';
        for s=1:numel(TXT)
            Strtxt = strcat(Strtxt,TXT(s));
        end
        
        Txt_Pred{img_count} = Strtxt;
        
        display(img_count)
        
        img_count = img_count + 1;
        
        if strcmpi(Strtxt,Img_Name{1})
            COP = COP+1;
        end
    end
end

Correct_Percent = 100*(COP/150);
disp('Correct_Percent (%): ')
disp(Correct_Percent)