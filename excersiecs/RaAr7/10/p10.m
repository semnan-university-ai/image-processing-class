close all
clear all
clc

path = dir('Numbers/*.png');
captcha = [];
for i=1:4
   random = randi(9);
   name = path(random).name;
   f = strcat('Numbers/',name);
   im = imread(f);
   im = imbinarize(im,0.00001);
   im = imresize(im,[128,128]);
   
   if(i==1)
       captcha1 = im;
       captcha =cat(2,captcha,captcha1);
   elseif(i==2)
       captcha2 = im;
       captcha =cat(2,captcha,captcha2);
   elseif(i==3)
       captcha3 = im;
       captcha =cat(2,captcha,captcha3);
   elseif(i==4)
       captcha4 = im;
       captcha =cat(2,captcha,captcha4);
   end
   
end
imshow(captcha);