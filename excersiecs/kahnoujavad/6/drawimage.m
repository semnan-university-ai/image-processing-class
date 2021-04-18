clc;
close all;
clear all;
<<<<<<< Updated upstream
image=zeros(600,'uint8');
for i = 1:256
    image((i*2)+3:(i*4)+5,1:256*4)=i;
=======
image=zeros(255*6,'uint8');
for i = 1:255
    image((i*5)+5:(i*7)+5,1:255*6)=i;
>>>>>>> Stashed changes
end
subplot(1,1,1),imshow(image),title('tasvir');

