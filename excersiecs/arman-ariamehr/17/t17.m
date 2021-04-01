address = 'benchmark\mountain.png';
input_im = imread(address);
image = input_im;

copy_im = image;

row_rec = ceil( size(image , 1) / 3 );
col_rec = size(image , 2);

for i = 1 : row_rec
    for j = 1 : col_rec
        value = image(i,j);
        if value >= 200
            copy_im(i,j) = 0;
        end
    end
end

imshow(copy_im);