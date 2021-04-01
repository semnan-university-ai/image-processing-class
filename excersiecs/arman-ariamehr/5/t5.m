address = 'koze.jpeg';
%read main image
im = imread(address);
%create its sym
sym_im = fliplr(im);
row = size(im , 1);
col = size(im , 2);
final_im = uint8(zeros(row , col * 2 , 3));
%the left side (col = 1 to col of main image) is sym of main image
final_im( : , 1 : col , : ) = sym_im;
%the right side (col = col of main image to end) is main image
final_im( : , col + 1 : end , : ) = im;
imshow(final_im);