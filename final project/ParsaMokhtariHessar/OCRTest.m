clc;
close all;
clear;
myFolder = 'OutPutClean\';
filePattern1 = fullfile(myFolder,'*.PNG');
theFiles = dir(filePattern1);
Tru=0;
Fals=0;
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    [folder, baseFileNameNoExt, extension] = fileparts(fullFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);
    % Now do whatever you want with this file name,
    image = imread(fullFileName);
    ocrRead = ocr(image);
    Read=string(ocrRead.Words);
    eadf='';
    si=size(Read);
    for u=1:si
        eadf = eadf+strcat(Read(u));
    end
    fi= baseFileNameNoExt;
    if size(eadf) == 0
        Fals=Fals+1;
    elseif eadf == fi
        Tru=Tru+1;
    else
        Fals=Fals+1;
    end
    
    
end

disp("True : "+Tru+", False : "+Fals+", Accuracy : %"+Tru/(Tru+Fals)*100);

