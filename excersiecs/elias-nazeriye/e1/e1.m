clear all;
close all;
clc;

r = input('Number of rows for a checkered page:');
c = input('Number of columns for a checkered page:');

Chessboard = zeros(r,c);

for i = 1:1:r
    x = i;
    for j = 1:1:c
        if(mod(x,2) == 1)
            Chessboard(i,j) = 1;
        end
        x = x + 1;
    end
end

for i = 1:1:r
    for j = 1:1:c
        if(Chessboard(i,j) == 0)
            rectangle('Position',[i j 1 1], 'FaceColor','k');
        else
            rectangle('Position',[i j 1 1], 'FaceColor','w');
        end
    end
end
