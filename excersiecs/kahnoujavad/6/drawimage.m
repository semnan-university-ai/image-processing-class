clc;
close all;
clear all;
image=zeros(256*4,'uint8');
for i = 1:256
    image((i*4)+3:(i*4)+5,1:256*4)=i;
end
subplot(1,2,1),imshow(image),title('tasvir');

