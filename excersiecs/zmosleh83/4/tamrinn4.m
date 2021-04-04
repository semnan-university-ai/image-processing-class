close all
clear all
clc

imdata = imread("C:\SemnanClass\9902\TA\Benchmark\airplane.png");
new_dims = size(imdata) - rem(size(imdata), 3);
imdata = imdata(1:new_dims(1),1:new_dims(2), :);
%%Arrange into 3x3 cell
block_dims = new_dims./[3 3 1];
blocks = mat2cell(imdata, block_dims(1)*ones(3,1), block_dims(2)*ones(3,1), block_dims(3));
%%Rearrange randomly
blocks(1:9) = blocks(randperm(9));
%%Set one block to zero
blocks(ceil(9*rand(1))) = {zeros(block_dims, class(imdata))};
%%Return to image
puzzle = cell2mat(blocks);
%%Plot input and output
figure(1)
image(imdata)
figure(2)
image(puzzle)