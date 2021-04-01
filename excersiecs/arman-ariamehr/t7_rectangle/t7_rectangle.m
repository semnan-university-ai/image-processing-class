x = input('x = ');
y = input('y = ');
row_rec = input('row = ');
col_rec = input('col = ');
output = uint8(zeros(1000 , 1000));
for i = 1 : row_rec
    for j = 1 : col_rec
        output(y + i - 1 , x + j - 1 ) = 255;
    end
end
imshow(output);