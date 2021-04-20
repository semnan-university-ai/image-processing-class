clc;
close all;
clear;

list=[];
for i=1:4
    alphabetic=char(randi(+'AZ'));
    m=imread("C:\Users\nmzis\OneDrive\Desktop\t\"+alphabetic+".png");
    m1=imbinarize(m,0.0001);
    m2=imresize(m1,[200,200]);
    list = [list; m2]; 

end
imshow(list)
