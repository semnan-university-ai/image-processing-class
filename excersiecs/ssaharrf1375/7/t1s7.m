clc;
close all;
clear all;

%????
subplot(2,2,1);
x_triangle = [0 2 4];
y_triangle = [0 4 0];
fill(x_triangle, y_triangle, 'g')
axis([0 10 0 10]);

%????
subplot(2,2,2);
x_square = [0 0 4 4];
y_square = [0 4 4 0];
fill(x_square, y_square, 'b')
axis([0 10 0 10]);

%??????
subplot(2,2,3);
x_Rectangle = [0 4 4 0 0];
y_Rectangle = [0 0 7 7 0];
fill(x_Rectangle, y_Rectangle, 'r')
axis([0 10 0 10]);

% ????
subplot(2,2,4);
x_Diamond = [2 2.5 2 1.5];
y_Diamond = [5 2.5 0 2.5];
c_Diamond = [1 0.8 0.3];
fill(x_Diamond, y_Diamond,c_Diamond)
axis([0 10 0 10]);

