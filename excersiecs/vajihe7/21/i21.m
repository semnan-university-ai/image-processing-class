clc;
clear;
close all;

image=imread("boy.png");
subplot(2,1,1),imshow(image),title('Orginal')

scpic=image;

[x,y,z]=size(image);
for i = 1:x
    for j = 1:y
        for k = 1:z
            a=fix(image(i,j,k)/70)*50;
            scpic(i,j,k)=a;
        end
    end
end
subplot(2,1,2),imshow(scpic),title('safe color')