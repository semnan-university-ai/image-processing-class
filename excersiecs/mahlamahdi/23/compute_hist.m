function [pixel_histogram] =  compute_hist(image)
[m ,n] = size(image);
pixel_histogram = zeros(1, 256);
for i = 1 : m
    for j = 1 : n
        pixel_histogram(1, image(i,j) + 1) = pixel_histogram(1, image(i,j) + 1) + 1;
        % pixel_histogram(1, image(i,j) + 1) += 1;
    end
end
end

