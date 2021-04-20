clc;
clear all;
close all;
% plot([0 1 1 0 0],[0 0 1 1 0])
% axis off
%rectangle
figure
a=[10 90 90 10 10];
b=[20 20 80 80 20];
plot(a,b);
fill(a, b, 'r')
axis([0 100 0 100]);
%square
figure
a=[20 80 80 20 20 80];
b=[20 20 80 80 20 20];
plot(a,b);
fill(a, b, 'r')
axis([0 100 0 100]);
%triangle
figure
a=[20 80 50 20  ];
b=[20 20 70 20  ];
plot(a,b);
fill(a, b, 'b')
axis([0 100 0 100]);

%diamond
figure
a=[50 80 50 20 50 ];
b=[20 50 80 50 20 ];
plot(a,b);
fill(a, b, 'g')
axis([0 100 0 100]);

