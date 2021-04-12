clear all
r = input ('Number of rows for a checkered page:');
c = input ('Number of columns for a checkered page:');

for i=1:r
        for j=1:c
            if mod((i+j),2)==0
                image(i,j)=0;
            else  
                 image(i,j)=1;
            end
        end
end
imshow(image);