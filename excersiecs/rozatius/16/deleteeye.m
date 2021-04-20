clc;clear;close all;
img=(imread("../../../benchmark/zelda.png"));
subplot(1,2,1),imshow(img),title('Orginal');
[sr,sc] = size(img);
for x=1:sr
   for y=1:sc
       if  x>250 && y>210 && x<290 && y<260  &&(img(x,y)>40 ||img(x,y)<20)
            img(x,y) = 150;
       end
       if  x>250 && y>305 && x<290 && y<350  &&(img(x,y)>40 ||img(x,y)<20)
            img(x,y) = 150;
       end
   end
end
subplot(1,2,2),imshow(img),title('ٍEdit');