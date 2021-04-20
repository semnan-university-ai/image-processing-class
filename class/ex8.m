
clc;
close all;
clear;

image = imread("../benchmark/fruits.png");
image = rgb2gray(image);
image = imresize(image, [ 512 512 ]);

figure, imshow(image);
figure, imshow(flip_image(image, 45));
figure, imshow(flip_image(image, 120));
figure, imshow(flip_image(image, 90));
figure, imshow(flip_image(image, 180));

function newImage = flip_image(image, degree)
    
    image_size = size(image);
    newImage = zeros(image_size(1,1), image_size(1, 2));
    
    if degree == 45
        % @safaiyan
        rmat = [
        cos(degree) sin(degree) 0
        -sin(degree) cos(degree) 0
        0           0          1];
        mx = size(image,2);
        my = size(image,1);
        corners = [
            0  0  1
            mx 0  1
            0  my 1
            mx my 1];
        new_c = corners*rmat;
        T = maketform('affine', rmat);
        newImage = imtransform(image, T, ...
            'XData',[min(new_c(:,1)) max(new_c(:,1))],...
            'YData',[min(new_c(:,2)) max(new_c(:,2))]);
        
    elseif degree == 90
        for i = 1 : image_size(1,1)
            for j = 1 : image_size(1,2)
                newImage(i, j) = image(image_size(1,1) - j + 1, ...
                 image_size(1, 2) - i + 1);
            end
        end
    elseif degree == 180
        image = flip_image(image, 90);
        for i = 1 : image_size(1,1)
            for j = 1 : image_size(1,2)
                newImage(i, j) = image(j, i);
            end
        end
    elseif degree == 120
        % @safaiyan
        rmat = [
        cos(degree) sin(degree) 0
        -sin(degree) cos(degree) 0
        0           0          1];
        mx = size(image,2);
        my = size(image,1);
        corners = [
            0  0  1
            mx 0  1
            0  my 1
            mx my 1];
        new_c = corners*rmat;
        T = maketform('affine', rmat);
        newImage = imtransform(image, T, ...
            'XData',[min(new_c(:,1)) max(new_c(:,1))],...
            'YData',[min(new_c(:,2)) max(new_c(:,2))]);
    end
    
    newImage = uint8(newImage);

end