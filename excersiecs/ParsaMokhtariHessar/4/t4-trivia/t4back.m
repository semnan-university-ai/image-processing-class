clc;
close all;
clear all;

% Specify the folder where the files live.
myFolder = '..\benchmark\';
% Check to make sure that folder actually exists.  Warn user if it doesn't.
if ~isfolder(myFolder)
    errorMessage = sprintf('Error: The following folder does not exist:\n%s\nPlease specify a new folder.', myFolder);
    uiwait(warndlg(errorMessage));
    myFolder = uigetdir(); % Ask for a new one.
    if myFolder == 0
         % User clicked Cancel
         return;
    end
end
% Get a list of all files in the folder with the desired file name pattern.
filePattern1 = fullfile(myFolder,'*.png'); % Change to whatever pattern you need.
filePattern2 = fullfile(myFolder,'*.bmp');
filePattern3 = fullfile(myFolder,'*.tif');
theFiles = [dir(filePattern1);dir(filePattern2);dir(filePattern3)];
PatchArray = zeros(100,100,27);
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);
    % Now do whatever you want with this file name,
    % such as reading it in as an image array with imread()
    image = imread(fullFileName);
    if size(image,3)==3
        image = rgb2gray(image);
    end
    %imshow(imageArray);  % Display image.
    imagesize = size(image);
    
    p = 100;
    for i = imagesize(1, 1) : -1 :(imagesize(1, 1)-100)
        if p == 0 
            break;
        end
        q = 100;
        for j = imagesize(1, 2): -1 :(imagesize(1, 2)-100)
            if q == 0 
                break;
            end
            PatchArray(p,q,k)= image(i,j,1);
            q=q-1;
        end
        p=p-1;
    end   
    drawnow; % Force display to update immediately.
end
PatchImage=zeros(500,500);
w=1
for b = 1:100:500
    for n = 1:100:500
        for m = 100:-1:1
            for o = 100:-1:1
                if w == 26
                    break;
                end
                PatchImage(b+m,n+o)=PatchArray(m,o,w);
                w=w+1;
            end
        end
    end
end

figure,
imshow(uint8(PatchImage));