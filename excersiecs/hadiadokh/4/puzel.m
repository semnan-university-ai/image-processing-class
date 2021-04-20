close all;
clear all;
clc;

orgpic = imread('d:\tamrin\4\yas.jpg');
new_dims = size(orgpic) - rem(size(orgpic), 3);
orgpic = orgpic(1:new_dims(1),1:new_dims(2), :);
puz3 = new_dims./[3 3 1];
slide = mat2cell(orgpic, puz3(1)*ones(3,1), puz3(2)*ones(3,1), puz3(3));
slide(1:9) = slide(randperm(9));
slide(ceil(9*rand(1))) = {zeros(puz3, class(orgpic))};
puzzle = cell2mat(slide);
figure(1)
image(orgpic)
figure(2)
image(puzzle)