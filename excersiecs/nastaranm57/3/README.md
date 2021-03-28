<div dir="rtl">
جواب سوال 3:
</div>

```
grayImage = imread('C:\Users\PC\Desktop\mountain.png');
[rows, columns, numberOfColorChannels] = size(grayImage);
imshow(grayImage, []);
axis on;
title('Original Grayscale Image', 'FontSize', 30);
set(gcf, 'Position', get(0,'Screensize')); % baraye bozorg kardane tasvir.
message = sprintf('Left click and hold to begin drawing.\nSimply lift the mouse button to finish');
uiwait(msgbox(message));
hFH = imfreehand();
% sakhte yek tasvire binary ("mask") az tarighe ROI.
binaryImage = hFH.createMask();
xy = hFH.getPosition;
% koochaktar kardane tasvir.
subplot(2, 2, 1);
imshow(grayImage, []);
axis on;
drawnow;
title('Original Grayscale Image', 'FontSize', 30);
% namayeshe mask.
subplot(2, 2, 2);
imshow(binaryImage);
axis on;
title('Binary mask of the region', 'FontSize', 30);
% agar tasvir grayscale ast, be rangi tabdil kon
if numberOfColorChannels < 3
  rgbImage = cat(3, grayImage, grayImage, grayImage);
else
  % hal tasvire rangi darim.
  rgbImage = grayImage;
end
% kanale rang haye ghermez sabz va abi ra estekhraj kon.
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);
% rangi ke mikhahim be aseman bedahim ra moshakhas kon.
desiredColor = [0, 0, 0]; % meshki
redChannel(binaryImage) = desiredColor(1);
greenChannel(binaryImage) = desiredColor(2);
blueChannel(binaryImage) = desiredColor(3);
% kanal haye rangi motefavet ra be ham motasek kon.
rgbImage = cat(3, redChannel, greenChannel, blueChannel);
% tasvir ra namayesh bede.
subplot(2, 2, 3);
imshow(rgbImage);
title('Image with color inside the mask region', 'FontSize', 30);
```

<div dir="rtl">
خروجی کد برنامه بالا به صورت زیر است:
</div>

![khorooji](02481.jpg)
