input_im = imread('benchmark\fruits.png');
[row , col , si] = size(input_im);

r = input_im( : , : , 1);
g = input_im( : , : , 2);
b = input_im( : , : , 3);

new_r = b;
new_g = g;
new_b = r;

new_im = uint8( zeros(row , col , si) );

new_im( : , : , 1 ) = new_r;
new_im( : , : , 2 ) = new_g;
new_im( : , : , 3 ) = new_b;

subplot(1,2,1)
imshow(input_im);
title('main picture');

subplot(1,2,2)
imshow(new_im);
title('new picture');