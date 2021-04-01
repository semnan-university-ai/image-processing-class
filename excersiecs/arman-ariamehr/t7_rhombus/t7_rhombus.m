start_i = input('the i of the top = ');
start_j = input('the j of the top = ');
height = input('large heigh = ');

height = ceil(height / 2);

image = uint8(zeros(1000 , 1000));

where_i = start_i;
%up side
for k = 0 : height - 1
    first_j = start_j - k;
    last_j = start_j + k;
    
    for where_j = first_j : last_j
        image(where_i , where_j) = 255;
    end
    
    where_i = where_i + 1;
end
%down side
for k = height - 2 : -1 : 0
    first_j = start_j - k;
    last_j = start_j + k;
    
    for where_j = first_j : last_j
        image(where_i , where_j) = 255;
    end
    
    where_i = where_i + 1;
end

imshow(image);