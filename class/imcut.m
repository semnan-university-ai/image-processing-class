function cut_image = imcut(image, step_size, x1, x2, y1, y2, show)
    cut_image = zeros(step_size+1 , step_size+1);
    cut_image(:,:) = image(x1:x2 , y1:y2);
    
    if show == 1
        figure, imshow(uint8(cut_image));
    end
end