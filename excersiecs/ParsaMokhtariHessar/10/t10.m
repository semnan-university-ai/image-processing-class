clc;
close all;
clear all;
img0 = imresize(rgb2gray(imread("numbers/0.png")),[300 300]);
img1 = imresize(rgb2gray(imread("numbers/1.png")),[300 300]);
img2 = imresize(rgb2gray(imread("numbers/2.png")),[300 300]);
img3 = imresize(rgb2gray(imread("numbers/3.png")),[300 300]);
img4 = imresize(rgb2gray(imread("numbers/4.png")),[300 300]);
img5 = imresize(rgb2gray(imread("numbers/5.png")),[300 300]);
img6 = imresize(rgb2gray(imread("numbers/6.png")),[300 300]);
img7 = imresize(rgb2gray(imread("numbers/7.png")),[300 300]);
img8 = imresize(rgb2gray(imread("numbers/8.png")),[300 300]);
img9 = imresize(rgb2gray(imread("numbers/9.png")),[300 300]);

%image = imresize(image, [150 150]);
% % Specify the folder where the files live.
% myFolder = 'numbers/';
% % Get a list of all files in the folder with the desired file name pattern.
% filePattern1 = fullfile(myFolder,'*.png'); % Change to whatever pattern you need.
% theFiles = dir(filePattern1);
PatchArray = zeros(300,300);
% for k = 1 : length(theFiles)
%     fullFileName = fullfile(theFiles(k).folder, baseFileName);
%     size=theFiles(k);
%     img(k)=zeros(size);
%     img{k} = imread(fullFileName);
% end
numberOfCaptcha = 4;
x=rand(1,numberOfCaptcha);
x10=round(x*10-1);
for i=1 : numberOfCaptcha 
    switch x10(1,i);
        case 0 
            [Wid,Hei]= size(img0);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img0(u,y);
                    end
                end
        case 1
            [Wid,Hei]= size(img1);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img1(u,y);
                    end
                end
        case 2
            [Wid,Hei]= size(img2);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img2(u,y);
                    end
                end
        case 3
            [Wid,Hei]= size(img3);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img3(u,y);
                    end
                end
        case 4
            [Wid,Hei]= size(img4);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img4(u,y);
                    end
                end
        case 5
            [Wid,Hei]= size(img5);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img5(u,y);
                    end
                end
        case 6
            [Wid,Hei]= size(img6);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img6(u,y);
                    end
                end
        case 7
            [Wid,Hei]= size(img7);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img7(u,y);
                    end
                end
        case 8
            [Wid,Hei]= size(img8);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img8(u,y);
                    end
                end
        case 9
            [Wid,Hei]= size(img9);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img9(u,y);
                    end
                end
        otherwise
            disp('other value')
    end
end
figure,
imshow(uint8(uint8(PatchArray)));
%imsave;