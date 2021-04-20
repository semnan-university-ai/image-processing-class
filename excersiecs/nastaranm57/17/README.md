<div dir="rtl">
جواب سوال 17:
  برای سیاه کردن آسمان از دو تکنیک استفاده می کنیم، تکنیک اول به این صورت است که یک ماسک باینری می سازیم و درون ماسک را به رنگ سیاه در می آوریم. از آنجایی که تصویر کوهستان خاکستری است، ابتدا آن را رنگی می کنیم و رنگ درون ماسک را با انتخاب سه مولفه rgb مشکی می کنیم
</div>

```
addpath("../../../benchmark/");
grayImage = imread("mountain.png");
[rows, columns, numberOfColorChannels] = size(grayImage);
imshow(grayImage, []);
axis on;
title('Original Grayscale Image', 'FontSize', 30);
set(gcf, 'Position', get(0,'Screensize'));                    % baraye bozorg kardane tasvir.
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

![khorooji](17.jpg)

<div dir="rtl">
در تکنیک دوم،از مختصات تصویر کمک می گیریم. با تشکر از آقای امید غلامی برای ارائه کد و توضیحات درباره تکنیک دوم این سوال:
</div>

@omidgholami74

```
addpath("../../../benchmark/");
image=imread("mountain.png");
subplot(1,2,1)
imshow(image);
title 'tasvire asli'
for j=1:640                             %arze tasvir
    for i=1:150                         %tule tasvir
     if 165<image(i,j)
         image(i,j)=0;
     end
     if image(i+1,j)<165
         break;
     end
    end
end
image=uint8(image);
subplot(1,2,2)
imshow(image);
title 'tasvire nahaii'
```

<div dir="rtl">
خروجی کد بالا به صورت زیر است:
</div>

![khorooji](02684.jpg)
