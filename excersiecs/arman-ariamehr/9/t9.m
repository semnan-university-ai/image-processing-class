FilterSpec = {'*.jpg' ; '*.jpeg' ; '*.png' ; '*.PNG' ; '*.*'};
[name, path] = uigetfile(FilterSpec,'choose a file');
address = [path name];
input_im = imread(address);
image = rgb2gray(input_im);
row = size(image , 1);
col = size(image , 2);
x = input('x = ');
y = input('y = ');
row_rec = input('row = ');
col_rec = input('col = ');
output = uint8(zeros(row_rec , col_rec));
for i = 1 : row_rec
    for j = 1 : col_rec
        output(i,j) = image(y + i - 1 , x + j - 1 );
    end
end
imshow(output);