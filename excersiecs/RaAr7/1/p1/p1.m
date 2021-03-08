close all
clear all
clc

n = input('Enter row : ');
m = input('Enter column : ');

Chessboard = zeros(n,m);

for i = 1:1:n
    x = i;
    for j = 1:1:m
        if(mod(x,2) == 1)
            Chessboard(i,j) = 1;
        end
        x = x + 1;
    end
end

for i = 1:1:n
    for j = 1:1:m
        if(Chessboard(i,j) == 0)
            rectangle('Position',[i j 1 1], 'FaceColor','k');
        else
            rectangle('Position',[i j 1 1], 'FaceColor','w');
        end
    end
end