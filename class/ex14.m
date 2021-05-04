clc;
close all;
clear;

folder = '../excersiecs/faeze75/14/city';
filePattern = fullfile(folder, '*.png');
f=dir(filePattern);
files={f.name};

hist_numbers = zeros(1, 12);

for i = 1 : 12
  fullFileName = fullfile(folder, files{i});
  images{i}=imread(fullFileName);
  
  image_size = size(images{i});
  image_size_size = size(image_size);
  if image_size_size(1, 2) == 3
      images{i} = rgb2gray(images{i});
  end
  
  hist_numbers(1, i) = miangin(images{i});
  %figure, imhist(images{i});
  
end