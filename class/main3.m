clc;
close all;
clear;

ref          = [ 1 1 2 2 1 1 2 2 1 1 ];
filter             = [ 1 2 1 ];
 
ConvMatris = conv2(ref,filter, 'same');

CorMatrix = zeros(1, size(ref,2));
for i = 1 : size(ref,2) - 2
    CorMatrix(1,i+1) = corr2(ref(1, i : i + size(filter,2)-1) , filter );
end