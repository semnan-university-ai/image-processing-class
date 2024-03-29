clc;clear;close all;

img = imread("../../../benchmark/watch.png");
R = img(:, :, 1);G = img(:, :, 2);B = img(:, :, 3);
Rhist=chanelhist(R);
Ghist=chanelhist(G);
Bhist=chanelhist(B);
RNhist=fix((Rhist/max(Rhist))*255);
GNhist=fix((Ghist/max(Ghist))*255);
BNhist=fix((Bhist/max(Bhist))*255);
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