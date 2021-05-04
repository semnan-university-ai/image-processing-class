input_im = imread('benchmark\fruits.png');
copy_im = input_im;
[row , col , b] = size(input_im);
for i = 1 : row
    for j = 1 : col
        r = input_im(i,j,1);
        g = input_im(i,j,2);
        b = input_im(i,j,3);
        
        new_r = new_value(r);
        new_g = new_value(g);
        new_b = new_value(b);
        
        copy_im(i,j,1) = new_r;
        copy_im(i,j,2) = new_g;
        copy_im(i,j,3) = new_b;
    end
end

subplot(1,2,1)
imshow(input_im);
title('RGB picture');

subplot(1,2,2)
imshow(copy_im);
title('safe RGB picture');

function val2 = new_value(val)
    if val >= 0 && val <= 50
            val2 = 0;
        elseif val >= 51 && val <= 101
            val2 = 51;
        elseif val >= 102 && val <= 152
            val2 = 102;
        elseif val >= 153 && val <= 203
            val2 = 153;
        else
            val2 = 204;
    end
end