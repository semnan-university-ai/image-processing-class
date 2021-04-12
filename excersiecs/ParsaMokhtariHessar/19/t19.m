clc;
close all;
clear all;
imgA = imresize(rgb2gray(imread("Alphabet/A.png")),[300 300]);
imgB = imresize(rgb2gray(imread("Alphabet/B.png")),[300 300]);
imgC = imresize(rgb2gray(imread("Alphabet/C.png")),[300 300]);
imgD = imresize(rgb2gray(imread("Alphabet/D.png")),[300 300]);
imgE = imresize(rgb2gray(imread("Alphabet/E.png")),[300 300]);
imgF = imresize(rgb2gray(imread("Alphabet/F.png")),[300 300]);
imgG = imresize(rgb2gray(imread("Alphabet/G.png")),[300 300]);
imgH = imresize(rgb2gray(imread("Alphabet/H.png")),[300 300]);
imgI = imresize(rgb2gray(imread("Alphabet/I.png")),[300 300]);
imgJ = imresize(rgb2gray(imread("Alphabet/J.png")),[300 300]);
imgK = imresize(rgb2gray(imread("Alphabet/K.png")),[300 300]);
imgL = imresize(rgb2gray(imread("Alphabet/L.png")),[300 300]);
imgM = imresize(rgb2gray(imread("Alphabet/M.png")),[300 300]);
imgN = imresize(rgb2gray(imread("Alphabet/N.png")),[300 300]);
imgO = imresize(rgb2gray(imread("Alphabet/O.png")),[300 300]);
imgP = imresize(rgb2gray(imread("Alphabet/P.png")),[300 300]);
imgQ = imresize(rgb2gray(imread("Alphabet/Q.png")),[300 300]);
imgR = imresize(rgb2gray(imread("Alphabet/R.png")),[300 300]);
imgS = imresize(rgb2gray(imread("Alphabet/S.png")),[300 300]);
imgT = imresize(rgb2gray(imread("Alphabet/T.png")),[300 300]);
imgU = imresize(rgb2gray(imread("Alphabet/U.png")),[300 300]);
imgW = imresize(rgb2gray(imread("Alphabet/V.png")),[300 300]);
imgV = imresize(rgb2gray(imread("Alphabet/W.png")),[300 300]);
imgX = imresize(rgb2gray(imread("Alphabet/X.png")),[300 300]);
imgY = imresize(rgb2gray(imread("Alphabet/Y.png")),[300 300]);
imgZ = imresize(rgb2gray(imread("Alphabet/Z.png")),[300 300]);
PatchArray = zeros(300,300);
numberOfCaptcha = 4;
x=rand(1,numberOfCaptcha);
x26=round(x*26-1);
for i=1 : numberOfCaptcha 
    switch x26(1,i)
        case 0 
        [Wid,Hei]= size(imgA);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgA(u,y);
                end
            end
        case 1
        [Wid,Hei]= size(imgB);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgB(u,y);
                end
            end
        case 2
        [Wid,Hei]= size(imgC);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgC(u,y);
                end
            end
        case 3
        [Wid,Hei]= size(imgD);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgD(u,y);
                end
            end
        case 4
        [Wid,Hei]= size(imgE);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgE(u,y);
                end
            end
        case 5
        [Wid,Hei]= size(imgF);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgF(u,y);
                end
            end
        case 6
        [Wid,Hei]= size(imgG);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgG(u,y);
                end
            end
        case 7
        [Wid,Hei]= size(imgH);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgH(u,y);
                end
            end
        case 8
        [Wid,Hei]= size(imgI);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgI(u,y);
                end
            end
        case 9
        [Wid,Hei]= size(imgJ);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgJ(u,y);
                end
            end
        case 10
        [Wid,Hei]= size(imgK);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgK(u,y);
                end
            end
        case 11
        [Wid,Hei]= size(imgL);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgL(u,y);
                end
            end
        case 12
        [Wid,Hei]= size(imgM);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgM(u,y);
                end
            end
        case 13
        [Wid,Hei]= size(imgN);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgN(u,y);
                end
            end
        case 14
        [Wid,Hei]= size(imgO);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgO(u,y);
                end
            end
        case 15
        [Wid,Hei]= size(imgP);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgP(u,y);
                end
            end
        case 16
        [Wid,Hei]= size(imgQ);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgQ(u,y);
                end
            end
        case 17
        [Wid,Hei]= size(imgR);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgR(u,y);
                end
            end
        case 18
        [Wid,Hei]= size(imgS);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgS(u,y);
                end
            end
        case 19
        [Wid,Hei]= size(imgT);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgT(u,y);
                end
            end
        case 20
        [Wid,Hei]= size(imgU);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgU(u,y);
                end
            end
        case 21
        [Wid,Hei]= size(imgV);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgV(u,y);
                end
            end
        case 22
        [Wid,Hei]= size(imgW);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgW(u,y);
                end
            end
        case 23
        [Wid,Hei]= size(imgX);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgX(u,y);
                end
            end
        case 24
        [Wid,Hei]= size(imgY);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgY(u,y);
                end
            end
        case 25
        [Wid,Hei]= size(imgZ);
            for u = 1 : Wid
                for y = 1 :Hei
                    PatchArray(u,(i-1)*300+y) = imgZ(u,y);
                end
            end

        
        
         
        otherwise
            disp('other value')
    end
end
figure,
imshow(uint8(uint8(PatchArray)));
%imsave;


