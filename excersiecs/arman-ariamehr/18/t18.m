address = 'benchmark\watch.png';
input_im = imread(address);
image = rgb2gray(input_im);
copy_im = image;

%185 190 99?
[center , radius] = imfindcircles(image , [185 190] , 'ObjectPolarity' , 'bright' , ... ,
    'Sensitivity' , 0.99);

data = round( [fliplr(center) radius] );

amount = size(data , 1);
for k = 1 : amount
    i_cen = data(k , 1);
    j_cen = data(k , 2);
    rad = data(k , 3);
    
    for th = 0 : 0.1 : 360
        for r = 0 : rad
            i = r * cos(th) + i_cen;
            j = r * sin(th) + j_cen;
            copy_im(floor(i) , floor(j)) = 255;
            copy_im(floor(i) , ceil(j)) = 255;
            copy_im(ceil(i) , floor(j)) = 255;
            copy_im(ceil(i) , ceil(j)) = 255;
        end
    end
end
    
imshow(copy_im);