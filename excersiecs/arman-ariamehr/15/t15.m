address = 'benchmark\pool.png';
input_im = imread(address);
r = input_im( : , : , 1);
g = input_im( : , : , 2);
b = input_im( : , : , 3);
image = rgb2gray(input_im);
[row , col] = size(image);
copy_im = image;

[center , radius] = imfindcircles(image , [20 40] , 'ObjectPolarity' , 'bright' , 'sensitivity' , 0.9);

data = round( [fliplr(center) radius] );

amount = size(center , 1);
i_cen = ceil(row / 2 + 1);
j_cen = ceil(col / 2 + 1);
value = image(i_cen , j_cen);

for k = 1 : amount
    i = data(k,1);
    j = data(k,2);
    
    r_value = r(i , j , 1);
    g_value = g(i , j , 1);
    b_value = b(i , j , 1);
    
    if r_value > 150 && g_value > 150 && b_value < 15
        i_cen = data(k , 1);
        j_cen = data(k , 2);
        rad = data(k , 3) + 20;

        for i1 = i_cen - rad : i_cen + rad
            for j1 = j_cen - rad : j_cen + rad
                copy_im(i1,j1) = value;
            end
        end
    end
end
imshow(copy_im);