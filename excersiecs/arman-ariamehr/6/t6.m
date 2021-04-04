row = input('row of each part = ');
col = input('col of each part = ');
image = uint8(zeros(row * 256 , col));

where = 1;

for i = 0 : 255
    mask = make_mask(row , col , i);
    image(where : where + row - 1 , : ) = mask;
    where = where + row;
end

imshow(image);

function [output] = make_mask(row,col,color)
    output = uint8(zeros(row , col));
    for i = 1 : row
        for j = 1 : col
            output(i,j) = color;
        end
    end
end