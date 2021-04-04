clc; % Clear the command window.
close all; % Close all figures (except those of imtool.)
imtool close all; % Close all imtool figures if you have the Image Processing Toolbox.
workspace; % Make sure the workspace panel is showing.
format long g;
format compact;
fontSize = 22;
% Read in a demo image.
baseFileName = 'C:\SemnanClass\9902\TA\Benchmark\jar.png';
% Get the full filename, with path prepended.
fullFileName = fullfile( baseFileName);
if ~exist(fullFileName, 'file')
% Didn't find it there. Check the search path for it.
fullFileName = baseFileName; % No path this time.
if ~exist(fullFileName, 'file')
% Still didn't find it. Alert user.
errorMessage = sprintf('Error: %s does not exist.', fullFileName);
uiwait(warndlg(errorMessage));
return;
end
end
rgbImage = imread(fullFileName);
% Get the dimensions of the image. numberOfColorBands should be = 3.
[rows, columns, numberOfColorBands] = size(rgbImage);
if numberOfColorBands > 1
grayImage = rgb2gray(rgbImage);
else
grayImage = rgbImage;
end
% Display the original color image.
subplot(3, 3, 1);
imshow(grayImage);
title('Original Image', 'FontSize', fontSize);
% Enlarge figure to full screen.
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Let's compute and display the histogram.
[pixelCount, grayLevels] = imhist(grayImage);
subplot(3, 3, 2);
bar(grayLevels, pixelCount);
grid on;
title('Histogram of original image', 'FontSize', fontSize);
xlim([0 grayLevels(end)]); % Scale x axis manually.
drawnow;
mask = grayImage < 200; % Entire can lid
% Get rid of holes inside.
mask = imfill(mask, 'holes');
% Erode to shrink the mask and get rid of letters.
se = strel('disk', 45, 0);
mask = imerode(mask, se);
subplot(3, 3, 3);
imshow(mask);
drawnow;
title('Mask for can interior', 'FontSize', fontSize);
% Mask the image
maskedImage = grayImage;
maskedImage(~mask) = 0;
subplot(3, 3, 4);
imshow(maskedImage);
title('Masked can lid', 'FontSize', fontSize);
% Get gradient
gradImage = imgradient(maskedImage);
subplot(3, 3, 5);
imshow(gradImage, []);
title('Gradient', 'FontSize', fontSize);
% Shrink mask again to get rid of outer outline
se = strel('disk', 15, 0);
mask = imerode(mask, se);
gradImage(~mask) = 0;
subplot(3, 3, 6);
imshow(gradImage, []);
title('Gradient (smaller)', 'FontSize', fontSize);
% Get histogram
pixelCount = hist(gradImage(:), 100);
% Suppress 0 so we can see the histogram
pixelCount(1)=0;
subplot(3, 3, 7);
bar(pixelCount);
grid on;
title('Histogram of Gradient Image', 'FontSize', fontSize);
drawnow;
% Threshold to get a binary image
binaryImage = gradImage > 45;
% Get rid of holes inside.
binaryImage = imfill(binaryImage, 'holes');
subplot(3, 3, 8);
imshow(binaryImage, []);
title('Initial Binary Image', 'FontSize', fontSize);
% Label the image
labeledImage = bwlabel(binaryImage);
% Make measurements of orientation
measurements = regionprops(labeledImage, 'Orientation', 'Area');
% Find the largest blob
[allAreas, sortIndexes] = max(sort([measurements.Area], 'Descend'))
% Pluck out largest one
biggestBlob = ismember(labeledImage, sortIndexes(1)) > 0;
subplot(3, 3, 9);
imshow(biggestBlob, []);
title('Final Binary Image', 'FontSize', fontSize);
% Measure again, this time just the largest blob.
% Label the image
labeledImage = bwlabel(biggestBlob);
% Make measurements of orientation
measurements = regionprops(labeledImage, 'Orientation', 'Area');
message = sprintf('The orientation angle = %f degrees\n', measurements(1).Orientation)
uiwait(helpdlg(message));
