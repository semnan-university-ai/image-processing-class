clc;
close all;
clear;

image = imread("../../benchmark/airplane.png");
image = imresize(image, [300 300]);

grayImg = grayscale(image);
imshow(grayImg);

%imagefiles = dir("../../*.png");
%cnt = length(imagefiles);

% for i=1:cnt
%     filename = imagefiles(i).name;
%     curImage = imread(filename);
%     
%     image = imresize(curImage, [300 300]);
%     grayImg = grayscale(image);
%     imshow(grayImg);
% end


function grayImage = grayscale(rgbImage)

  [rows, columns, numberOfColorChannels] = size(rgbImage);
  if numberOfColorChannels  == 3
      
      redChannel = rgbImage(:, :, 1);
      greenChannel = rgbImage(:, :, 2);
      blueChannel = rgbImage(:, :, 3);
      
      grayImage = .299*double(redChannel) + .587*double(greenChannel) + .114*double(blueChannel);
      
      grayImage = uint8(grayImage);
  else
      
      grayImage = rgbImage;  
  end
end

