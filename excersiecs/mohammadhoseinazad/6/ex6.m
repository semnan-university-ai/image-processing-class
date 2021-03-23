image = ones(550,800,3);%create white image
[row_len,column_len,rgb] = size(image);
side_vert = floor(row_len/9);
side_hor  = floor(column_len/9);
color = 1;

for(j = 1:side_hor:column_len - side_hor)
    for(i = 1:side_vert:row_len)
        if(color == 0)
            color = 1;
        else
            if rem(i,2)==0
            image(i:side_vert - 1 + i,j:j + side_hor - 1,:) = 0;
            color = 0;
            end
        end
    end
end
image = flip(image,1);
imshow(image);