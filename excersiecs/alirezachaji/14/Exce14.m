close all;
clc;
clear all;
image_file=dir('time\*.png');

for i=1:12
        figure;
        a=image_file(i).name;
        add="time\s"+int2str(i)+".png";
        pic=imread(add);
        pic2=imresize(pic,[600 1000]);
        pic2=rgb2gray(pic2);
        ch_hist(pic2);
        subplot(1,2,1);imshow(pic2);title("Image "+int2str(i));
        subplot(1,2,2);bar(ans);title("Histogram "+int2str(i));
       
end        