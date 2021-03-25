image=imread("C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\mountain.png");
imshow(image)
for j=2:640 %arze tasvir
    t=0;
    s=1;
    for i=2:150 % tule mahdude
        if (image(i,j)<120)
            t=1;
        end  
        if (t==0) % t==0 baraye joda kardane mahdudeye barfi
            image(i,j)=0; % range tasvir chi beshe
        end  
    end 
end
image=uint8(image);
figure;
imshow(image)