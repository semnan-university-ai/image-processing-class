%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Pepper_noise Function %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% This nunction get the address of an image and number of noise pixel%%%
%%%%%%%%%%%%%%%%%%%%% and add noise on the Image %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function pic=pepper_noise(add,ps)
pic=imread(add);
figure;
subplot(1,2,1);imshow(pic);
n=size(pic);
if (n(3)==3)
    pic=rgb2gray(pic);
end 
px=round((ps*n(1)*n(2))/100);
for i=1:px
    x=randi(n(1));
    y=randi(n(2));
    z=round(mod(randi(10),2));
    pic(x,y)=z*255;
end
pic=uint8(pic);
subplot(1,2,2);imshow(pic);