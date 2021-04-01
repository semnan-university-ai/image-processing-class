r = input('r = ');
x = input('x = ');
y = input('y = ');
black_image = zeros(1000 , 1000 , 3 , 'uint8');
final_image = insertShape(black_image,'FilledCircle',[x y r],'color','white');
imshow(final_image);