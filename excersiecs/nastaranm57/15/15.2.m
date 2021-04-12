image =imread('C:\Users\PC\Desktop\pool.png');
subplot(1,2,1) 
imshow(image);
title 'tasvire asli'
image =rgb2gray(image);
ball=[400 290 60]
image = insertShape(image,'FilledCircle',ball,...
    'Color',[49 49 49],'Opacity',1);
subplot(1,2,2)
imshow(image);
title 'tasvire nahaii'