address = 'benchmark\pool.png';
input_im = imread(address);
image = rgb2gray(input_im);

copy_im = image;

[center , radius] = imfindcircles(image , [20 40] , 'ObjectPolarity' , 'bright' , 'sensitivity' , 0.9);



data = round( [fliplr(center) radius] );

amount = size(center , 1);
max_sum = data(1,1) + data(1,2);
where = 1;
for k = 2 : amount
    xy = data(k,1) + data(k,2);
    if xy > max_sum
        max_sum = xy;
        where = k;
    end
end

i_cen = data(where , 1);
j_cen = data(where , 2);
rad = data(where , 3);
crop = imcrop(image , [j_cen-rad i_cen-rad 3*rad 3*rad]);

value = image(i_cen-rad - 1 , j_cen-rad - 1);

for i = i_cen - rad - 20 : i_cen + 2*rad
    for j = j_cen - rad - 20 : j_cen + 2*rad
        copy_im(i,j) = value;
    end
end

imshow(copy_im);