clc;
clear all;
close all;
image=imread("D:/image-processing-class/benchmark/zelda.png");
subplot(2,2,1), imshow(image),title('orginal zelda');
[a,b]=size(image);
for i=1:a
    for j=1:b
        if image(i,j)>40 && i>260 && j>210 && i<280 && j<260
            image(i,j) = 120;
       end
       if image(i,j)>40 && i>260 && j>305 && i<280 && j<350
            image(i,j) = 120;
       end
   end
end
subplot(2,2,2),imshow(image),title('Non orginal zelda');
