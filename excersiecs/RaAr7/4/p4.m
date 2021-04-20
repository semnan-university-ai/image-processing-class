close all
clear all
clc

pic = uint8(zeros(500,500));
fileFolder = fullfile(matlabroot,'bin','img');
imds = imageDatastore(fileFolder,'FileExtensions',{'.tif','.png','.bmp'});

s=1;
for i=1:100:500
    for j=1:100:500
        if s<=25
            image = readimage(imds,s);
            [x,y,z] = size(image);
            image = image(x-99:x,y-99:y);
            pic(i:i+99,j:j+99) = image;
            s=s+1;
        end
    end
end

imshow(pic);