clc;
close all;
clear all;
DIR = 'OUT\';
file = fullfile(DIR,'*.jpg');
Files = dir(file);
F=0;
T=0;
for k = 1 : length(Files)
    base_file = Files(k).name;
    full_file = fullfile(Files(k).folder, base_file);
    [dir, base_FileName, ext] = fileparts(full_file);
    fprintf(1, 'Now read %s\n', full_file);
    img = imread(full_file);
    ocrRead = ocr(img);
    Read=string(ocrRead.Words);
    eadf='';
    s=size(Read);
    for u=1:s
        eadf = eadf+strcat(Read(u));
    end
    fi= base_FileName;
    if size(eadf) == 0
        F=F+1;
    elseif eadf == fi
        T=T+1;
    else
        F=F+1;
    end
    
    
end

disp("True : "+T+", False : "+F+", Accuracy : %"+T/(T+F)*200);

