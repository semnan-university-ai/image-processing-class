clc;
clear;
X=imread("C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\airplane.png");
 indexNum = [512,512];
    grayImage = im2uint8(zeros(indexNum(1), indexNum(2)));
    temp = 0;
    for i = 1:indexNum(1)
        for j=1:indexNum(2)
            temp = int32(X(i, j, 1)) + int32(X(i, j, 2)) + int32(X(i, j, 3));
            if(temp < 0)
                temp = 0;
            elseif(temp > 255)
                temp = 255;
            end
            grayImage(i,j) = int8(round(temp * .33));
        end
    end
    imshow(grayImage);