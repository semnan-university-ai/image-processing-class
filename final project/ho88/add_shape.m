function image = add_shape(img)

[height width] = size(img);
num_line = randi([1 7]);
image = img;
%add line
for i=1:num_line
    
   image = insertShape(image, 'Line', [randi([1 width]) randi([1 height]) randi([1 width]) randi([1 height])], 'LineWidth',1);
    
end

num_circle = randi([1 4]);
% add circle
for i=1:num_circle  
    image = insertShape(image, 'Circle', [randi([20 height-20]) randi([20 width-20]) randi([10 height/2])], 'LineWidth',1);
end

image = rgb2gray(image);
end