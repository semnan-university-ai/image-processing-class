clc;
close all;
clear all;
figure;%rectangle
a=[10 90 90 10 10];
b=[20 20 80 80 20];
plot(a,b);
axis([0 100 0 100]);

figure;%square
a=[20 80 80 20 20 80];
b=[20 20 80 80 20 20];
plot(a,b);
axis([0 100 0 100]);

figure;%triangle
a=[20 80 50 20  ];
b=[20 20 70 20  ];
plot(a,b);
axis([0 100 0 100]);

figure;%diamond
a=[50 80 50 20 50 ];
b=[20 50 80 50 20 ];
plot(a,b);
axis([0 100 0 100]);

