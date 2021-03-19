clc
close all
clear all

final_image = img_grd(300,400,[0 0 0],[255 255 255]);

function [final_image]= img_grd(l,w,fc,sc)
    length_image=l;
    width_image=w;
    first_color=fc;
    second_color=sc;
    final_image(1:width_image,1:length_image,1:3)=255;  
    red_component=round(linspace(first_color(1),second_color(1),256));
    green_component=round(linspace(first_color(2),second_color(2),256));
    blue_component=round(linspace(first_color(3),second_color(3),256));
    final_image=uint8(final_image);
    
    for x=1:length(red_component)
        final_image(:,x,1)= red_component(x); 
        final_image(:,x,2)= green_component(x); 
        final_image(:,x,3)= blue_component(x); 
    end
    imshow(final_image)
end