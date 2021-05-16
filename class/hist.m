function pixel_histogram = hist(image)

    pixel_histogram = zeros(1, 256);

    for i = 1 : 512
        for j = 1 : 512
            pixel_histogram(1, image(i,j) + 1) = pixel_histogram(1, image(i,j) + 1) + 1;
        end
    end
    
    figure, plot(pixel_histogram);
    
end