image = imread('mountain.png');

subplot(1,2,1); imshow(image),title('Image');

[x,y] = size(image);
for j=2:y 
    for i=2:150 
        if (image(i,j)<120)
           break
        end  
       if (image(i,j)>120)
            image(i,j)=0; 
        end  
    end 
end
img=uint8(image);
subplot(1,2,2); imshow(img),title('new image');
