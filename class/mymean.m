function image_result = mymean(image)

    sum = 0;

    image_size = size(image);

    image_result = zeros(image_size(1, 1), image_size(1, 2));

    for i = 1:image_size(1, 1)
       for j= 1:image_size(1, 2)
        image(i, j) = image(i, j);
       end
    end

    for i = 1:image_size(1, 1)
       for j= 1:image_size(1, 2)
           if(i == 1 && j == 1)
               sum = [ image(i, j) image(i, j+1) image(i+1, j) image(i+1, j+1)];
           elseif(i == image_size(1, 1) && j == 1)
               sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1)];
           elseif(i == 1 && j == image_size(1, 2))
               sum = [ image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
           elseif(i == image_size(1, 1) && j == image_size(1, 2))
               sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j)];
           elseif(i == 1)
               sum = [ image(i, j-1) image(i, j) image(i, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
           elseif(i == image_size(1, 1))
               sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1)];
           elseif(j == 1)
               sum = [ image(i-1, j) image(i-1, j+1) image(i, j) image(i-1, j+1) image(i+1, j) image(i+1, j+1)];
           elseif(j == image_size(1, 2))
               sum = [ image(i-1, j-1) image(i-1, j) image(i, j-1) image(i, j) image(i+1, j-1) image(i+1, j)];
           else
               sum = [ image(i-1, j-1) image(i-1, j) image(i-1, j+1) image(i, j-1) image(i, j) image(i-1, j+1) image(i+1, j-1) image(i+1, j) image(i+1, j+1)];
           end

           image_result(i, j) = mean(sum);
           sum = 0;
       end
    end
    
    image_result = uint8(image_result);

end