x = input('x = ');
y = input('y = ');
squ = input('row = ');
output = uint8(zeros(1000 , 1000));
for i = 1 : squ
    for j = 1 : squ
        output(y + i - 1 , x + j - 1 ) = 255;
    end
end
imshow(output);