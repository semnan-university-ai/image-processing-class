clc;
close all;
clear;

folder = '../benchmark';
filePattern = fullfile(folder, '*.png');
f=dir(filePattern);
files={f.name};
for i = 1 : 25
  fullFileName = fullfile(folder, files{i});
  images{i}=imread(fullFileName);
  
  image_size = size(images{i});
  image_size_size = size(image_size);
  if image_size_size(1, 2) == 3
      images{i} = rgb2gray(images{i});
  end
end

width = 100;
height = 100;
output_image = zeros(width, height);
output_image(:,:) = 255;

for i = 1 : 24
    
    image_size = size(images{i});
    temp_images = images{i};
    
    startY = (i - mod(i, 5)) / 5;
    
    startX = mod(i, 5);
    if i == 1
        startX = 0;
    end

    output_image(startY*100+1:startY*100+101, startX*100+1:startX*100+101) = temp_images(image_size(1,1) - 100 : image_size(1,1), image_size(1,2) - 100 : image_size(1,2));
    
end
    

output_image = uint8(output_image);
imshow(output_image);
   



