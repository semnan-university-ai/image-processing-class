clc
clear
close all
alphabet=loadchar();
for k=1:150
al={};
finalImage=rotation(al,alphabet);
finalImage= imnoise(finalImage,'salt & pepper',0.1);
imshow(finalImage);
position();
name=input('what do you see?','s');
print('-dpng',name);
ocr(finalImage)
end
