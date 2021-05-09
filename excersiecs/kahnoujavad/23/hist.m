function [colors] = imhistogram(img)

[x,y] = size(img);
colors = zeros(1,256);
for i=1:x
    for j=1:y
        z = img(i,j);
        colors(z + 1) = colors(z + 1) + 1;
    end
end

end