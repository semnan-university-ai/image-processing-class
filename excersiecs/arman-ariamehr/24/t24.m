input_im1 = imread('benchmark\watch.png');
[row1 , col1  , si1] = size(input_im1);

input_im2 = imread('benchmark\pool.png');
[row2 , col2  , si2] = size(input_im2);

min_row = min(row1 , row2);
min_col = min(col1 , col2);

image1 = imresize(input_im1 , [min_row min_col]);
r1 = image1( : , : , 1);
g1 = image1( : , : , 2);
b1 = image1( : , : , 3);

image2 = imresize(input_im2 , [min_row min_col]);
r2 = image2( : , : , 1);
g2 = image2( : , : , 2);
b2 = image2( : , : , 3);

new_im1 = uint8( zeros(min_row , min_col , si1) );
new_im1( : , : , 1) = r2;
new_im1( : , : , 2) = g1;
new_im1( : , : , 3) = b1;

new_im2 = uint8( zeros(min_row , min_col , si2) );
new_im2( : , : , 1) = r1;
new_im2( : , : , 2) = g2;
new_im2( : , : , 3) = b2;

subplot(2,2,1)
imshow(image1) , title('watch before change');

subplot(2,2,2)
imshow(image2) , title('pool before change');

subplot(2,2,3)
imshow(new_im1) , title('watch after change');

subplot(2,2,4)
imshow(new_im2) , title('pool after change');