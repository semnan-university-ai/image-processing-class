
image=imread('benchmark\girl.png');
image=imresize(image,[300,300]);
figure;imshow(image);
title('Original Image')
[x,y,z]=size(image);
for i=1:x
    for j=1:y
        for k=1:z
            image(i,j,k)=floor(image(i,j,k)/51)*51;
        end
    end
end 

figure;imshow(image);
title('Safe Color')