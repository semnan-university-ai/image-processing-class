function [] = e231(image,e)
%CUSTHIST Summary of this function goes here
%   Detailed explanation goes here
if e == "r"
    imagec = image(:,:,1); 
elseif e == "g"
    imagec = image(:,:,2); 
elseif e == "b"
   imagec = image(:,:,3); 
else
    disp("not enough arguments!");   
end
imagesize = size(imagec);
hist = zeros(1, 256);
for i = 1 : imagesize(1, 1)
    for j = 1 : imagesize(1, 2)
        hist(1, imagec(i, j) + 1) = hist(1, imagec(i, j) + 1) +  1;
    end
end
plot(hist, '-d');
end