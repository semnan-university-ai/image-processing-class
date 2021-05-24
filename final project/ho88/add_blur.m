function filteredImage = add_blur(img)

filterWindow = ones(3) / 9;
filteredImage = imfilter(img, filterWindow);

end