close all
clear all
clc

path = dir('Alphabet/*.png');
captcha = [];
for i=1:5
   random = randi(26);
   name = path(random).name;
   f = strcat('Alphabet/',name);
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
   elseif(i==5)
       captcha5 = im;
       captcha =cat(2,captcha,captcha5);
   end
end

imshow(captcha);