function image_out = e13_negative(image)
%E13_NEGATIVE Summary of this function goes here
%   Detailed explanation goes here
image=imread(image);
image =rgb2gray(image);
[width,height] =size(image);

for i=1:width 
    for j=1:height
        image(i,j,:)=255-image(i,j,:);
    end
end
image_out=image;

end