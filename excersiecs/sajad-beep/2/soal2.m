x=1000;
y=1000;
imagesquare=zeros(x,y);
center=500;
r=100;
for i=1:x
    for j=1:y
        imagesquare(i,j)=0;
    end
end
 
for i=0:1000
    for j=0:1000
       if (r>sqrt((i-center)^2+(j-center)^2))
           imagesquare(i,j)=255;
       end
    end
end


 
figure,
imshow(imagesquare);