function pixel_histogram = hist(image)

    pixel_histogram = zeros(1, 256);

    for i = 1 : 563
        for j = 1 : 1000
            pixel_histogram(1, image(i,j) + 1) = pixel_histogram(1, image(i,j) + 1) + 1;
        end
    end
    
    plot(pixel_histogram);
    
end