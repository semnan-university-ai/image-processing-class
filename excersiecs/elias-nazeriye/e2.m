clear all;
close all;
clc;

x = input('Enter X-axis: ');
y = input('Enter Y-axis: ');
r = input('Enter radius: ');

img=zeros(1000,1000,1,'uint8');
imshow(img);


t=0:pi/20:2*pi;  
Circle1=x+r*cos(t);  
Circle2=y+r*sin(t);
    
 hold on;
 plot(Circle1,Circle2,'color','w','linewidth',2);
 hold off;