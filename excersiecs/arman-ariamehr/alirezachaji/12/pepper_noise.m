%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Pepper_noise Function %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% This nunction get the address of an image and number of noise pixel%%%
%%%%%%%%%%%%%%%%%%%%% and add noise on the Image %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function pic=pepper_noise(add,ps)
pic=imread(add);
figure;
imshow(pic);
n=size(pic);
for i=1:ps
    x=randi(n(1));
    y=randi(n(2));
    z=round(mod(randi(10),2));
    pic(x,y,:)=z*255;
end
pic=uint8(pic);
figure;
imshow(pic);