clc;
clear;
close  all;

orginalPic=imread('kozeh.png');
orginalPic=rgb2gray(orginalPic);
picSize=size(orginalPic);
endpic=zeros(picSize(1),picSize(2)*2,'uint8');


for y= 1 : picSize(1)
    for x=1 :  picSize(2)
        endpic(y,x)=orginalPic(y,x); 
    end
    
    w=picSize(2);
    for x=1 :  picSize(2)
        endpic(y,x+picSize(2))=orginalPic(y,w); 
        w=w-1;
    end
end
figure, imshow(orginalPic);
figure,imshow(endpic);
