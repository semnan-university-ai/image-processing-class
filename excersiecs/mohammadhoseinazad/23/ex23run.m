clc;
close all;
clear;

img = imread("../../../benchmark/girl.png");
%%img=imread("C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\girl.png");
Red = img(:, :, 1);Green = img(:, :, 2);Blue = img(:, :, 3);
Redhist=hister(Red);
Greenhist=hister(Green);
Bluehist=hister(Blue);

RNhist=fix((Redhist/max(Redhist))*255);
GNhist=fix((Greenhist/max(Greenhist))*255);
BNhist=fix((Bluehist/max(Bluehist))*255);

RHimg= zeros(255,255,'uint8');
GHimg= zeros(255,255,'uint8');
BHimg= zeros(255,255,'uint8');

for j=1:255
    for i=RNhist(1,j):-1:1
        RHimg(256-i,j)=255;
    end
    for i=GNhist(1,j):-1:1
        GHimg(256-i,j)=255;
    end
    for i=BNhist(1,j):-1:1
        BHimg(256-i,j)=255;
    end
end
subplot(2,2,1),imshow(img),title('Orginal');
subplot(2,2,2),imshow(RHimg),title('R-Chanel');
subplot(2,2,3),imshow(GHimg),title('G-Chanel');
subplot(2,2,4),imshow(BHimg),title('B-Chanel');