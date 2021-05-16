<div dir="rtl">
جواب سوال 18:
  در صورتی که هدف از سوال، سفید کردن کل صفحه ساعت باشد، می توانیم از دو تکنیک استفاده کنیم. تکنیک اول استفاده از ماسک است:
  برای این منظور، پس از اجرای کد زیر، محدوده ساعت را به صورت دستی مشخص کرده تا درون آن سفید شود:
</div>

<div dir="rtl">
قطعه کد زیر، تصویر را از ورودی دریافت می کند:
</div>

```
addpath("../../../benchmark/");
a = imread("watch.png");
```

<div dir="rtl">
در این قسمت، اطلاعات اندازه تصویر را در متغیر های "سطر، ستون و اندازه کانال" قرار می دهیم و تصویر اصلی را نمایش می دهیم:
</div>

```
[rows, columns, numberOfColorChannels] = size(a);
imshow(a, []);
axis on;
title('تصویر اصلی', 'FontSize', 15);
```

<div dir="rtl">
حال تصویر را کمی بزرگتر از اندازه اصلی اش می کنیم تا بتوانیم ماسک را با دقت بیشتری مشخص کنیم. پس از نمایش تصویر، پیغامی روی صفحه نمایش ظاهر می شود و به شما می گوید " که با کلیک چپ و نگه داشتن آن، می توانید ماسک را بکشید و در پایان، انگشتتان را از روی موس بردارد":
</div>

```
set(gcf, 'Position', get(0,'Screensize')); % baraye bozorg kardane tasvir.
message = sprintf('Left click and hold to begin drawing.\nSimply lift the mouse button to finish');
uiwait(msgbox(message));
hFH = imfreehand();
```

<div dir="rtl">
با استفاده از ابزار ROI یک تصویر باینری از تصویر اصلی می سازیم و پس از آن، تصویر را کوچکتر می کنیم و آن را نمایش می دهیم:
</div>

```
% sakhte yek tasvire binary ("mask") az tarighe ROI.
binaryImage = hFH.createMask();
xy = hFH.getPosition;
% koochaktar kardane tasvir.
subplot(2, 2, 1);
imshow(a, []);
axis on;
drawnow;
title('تصویر اصلی', 'FontSize', 15);
```

<div dir="rtl">
اگر تصویر خاکستری است، آن را به تصویر رنگی تبدیل می کند:
</div>

```
% namayeshe mask.
subplot(2, 2, 2);
imshow(binaryImage);
axis on;
title('تصویر ماسک', 'FontSize', 15);
% agar tasvir grayscale ast, be rangi tabdil kon
if numberOfColorChannels < 3
  rgbImage = cat(3, a, a, a);
else
  % hal tasvire rangi darim.
  rgbImage = a;
end
% kanale rang haye ghermez sabz va abi ra estekhraj kon.
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);
```

<div dir="rtl">
در این قسمت، باید رنگ مورد نظرمان (سفید) را مشخص کنیم. پس از آن، کانال های رنگی را مقدار دهی کرده و در نهایت این کانال ها را روی هم قرار می دهیم:
</div>

```
% rangi ke mikhahim be aseman bedahim ra moshakhas kon.
desiredColor = [255, 255, 255]; % sefid
redChannel(binaryImage) = desiredColor(1);
greenChannel(binaryImage) = desiredColor(2);
blueChannel(binaryImage) = desiredColor(3);
% kanal haye rangi motefavet ra be ham motasek kon.
rgbImage = cat(3, redChannel, greenChannel, blueChannel);
```

<div dir="rtl">
تصویر نهایی را نمایش بده:
</div>

```
subplot(2, 2, 3);
imshow(rgbImage);
title('تصویر تغییر یافته', 'FontSize', 15);
```

<div dir="rtl">
خروجی کد برنامه بالا به صورت زیر است:
</div>

![khorooji](02567.jpg)

<div dir="rtl">
در تکنیک دوم، مختصات دور ساعت را با استفاده از ابزار متلب استخراج کرده، و درون کد قرار می دهیم تا درون آن به رنگ دلخواه ما (سفید) در بیاید:
</div>

<div dir="rtl">
ابتدا تصویر اصلط را خوانده و آن را در subplot نمایش می دهیم:
</div>

```
addpath("../../../benchmark/");
image=imread("watch.png");
subplot(1,2,1)
imshow(image);
title 'tasvire asli'
```

<div dir="rtl">
سپس، نمامی مختصات (x و y ) های دور ساعت را با استفاده از ابزار متلب یادداشت کرده و درون متغیری جدا قرار می دهیم:
</div>

```
saat=[354 508 368 526  388 545 415 561 440 572 464 578 492 582 524 582 557 577 591 567 624 551 654 528 680 496 692 460 694 425 687 400 662 358 633 331 591 310 552 298 503 296 462 304 424 315 393 334 366 356 350 379 337 406 332 434 333 460 342 486];
```

<div dir="rtl">
برای پر کردن رنگ درون مختصات مشخص شده، از دستور زیر استفاده می کنیم
</div>

```
colorCode=140;
image = insertShape(image,'FilledPolygon',{saat},'Color',[255 255 255],'Opacity',1);
```

<div dir="rtl">
حال نوبت به نمایش تصویر نهایی در کنار تصویر اصلی می رسد:
</div>

```
subplot(1,2,2)
imshow(image);
title 'tasvire nahaii'
```

<div dir="rtl">
خروجی کد برنامه بالا به صورت زیر است:
</div>

![khorooji](02685.jpg)
