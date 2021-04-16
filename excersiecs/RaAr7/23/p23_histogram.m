function [colours] = imhistogram(image)

[x,y] = size(image);
colours = zeros(1,256);
for i=1:x
    for j=1:y
        z = image(i,j);
        colours(z + 1) = colours(z + 1) + 1;
    end
end

end