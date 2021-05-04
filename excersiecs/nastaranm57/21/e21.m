colorValues = (0:0.199:1).';  %'
webSafeMap = [repmat(colorValues,36,1) ...
              kron(colorValues,ones(36,1)) ...
              repmat(kron(colorValues,ones(6,1)),6,1)];
addpath("../../../benchmark/");
imageRGB = imread("cat.png"); 
imageRGB2 = ind2rgb(rgb2ind(imageRGB,webSafeMap),webSafeMap);
subplot(1,2,1);imshow(imageRGB);
title('Original Image');
subplot(1,2,2);imshow(imageRGB2);
title('Safe Color');
