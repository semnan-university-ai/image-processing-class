address = 'benchmark\zelda.png';
input_im = imread(address);
image = input_im;
copy_im = image;
row = size(image , 1);
col = size(image , 2);

[center , radius] = imfindcircles(image , [8 12] , 'ObjectPolarity' , 'dark' , 'sensitivity' , 0.95);

middle = ceil( row / 2 );
limit = 15;
low = middle - limit ;
hight = middle + limit;

data = round([fliplr(center) radius]);

amount = size(center , 1);
for k = 1 : amount
    i_cen = data(k , 1);
    j_cen = data(k , 2);
    rad = 2 * data(k , 3);
    if i_cen >= low && i_cen <= hight
        for th = 0 : 0.1 : 360
            for r = 0 : rad
                i = r * cos(th) + i_cen;
                j = r * sin(th) + j_cen;
                copy_im(floor(i) , floor(j)) = 0;
                copy_im(floor(i) , ceil(j)) = 0;
                copy_im(ceil(i) , floor(j)) = 0;
                copy_im(ceil(i) , ceil(j)) = 0;
            end
        end
    end
end

imshow(copy_im)