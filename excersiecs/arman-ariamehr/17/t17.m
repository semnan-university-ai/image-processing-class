address = 'benchmark\mountain.png';
input_im = imread(address);
image = input_im;

copy_im = image;

row = size(image , 1);
col = size(image , 2);

for j = 1 : col
    for i = 1 : row
        value = image(i,j);
        if value >= 200
            copy_im(i,j) = 0;
        end
        if image(i+1 , j) < 200
            break
        end
    end
end

imshow(copy_im);