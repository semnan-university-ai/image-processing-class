close all;
clc;

 grayImage = imread('pool.png');

%Split into RGB Channels
Red = grayImage(:,:,1);
Green = grayImage(:,:,2);
Blue = grayImage(:,:,3);

% Plot the histogram.
im_histogram(Red);
subplot(2,3,1);bar(ans);title('Red histogram','Color','r');
im_histogram(Green);
subplot(2,3,2);bar(ans);title('Green histogram','Color','g');
im_histogram(Blue);
subplot(2,3,3);bar(ans);title('Blue histogram','Color','b');
subplot(2,3,5);imshow(grayImage);title('Original Image','Color','m')

% grayLevels = 0 : 255;
% bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'red');
% bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'green');
% bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'blue');
% xlabel('Gray Level', 'FontSize', 20);
% ylabel('Pixel Count', 'FontSize', 20);
% title('Histogram', 'FontSize', 20);
% grid on;
% figure();
