image=imread("C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\pool.png");
subplot(1,2,1), imshow(image);

image=rgb2gray(image);
%tayine mahdude
for i=230:350
    for j=350:470
        image(i,j)=image(i-1,j);
    end
end
subplot(1,2,2), imshow(image)
%imshow(image)