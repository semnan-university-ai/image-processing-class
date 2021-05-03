pic=imread('benchmark/sails.png');
figure;imshow(pic);
[height,width,k]=size(pic);
for i=1:height
    for j=1:width
            pic(i,j,:)=floor(pic(i,j,:)/51)*51;
    end
end 
pic=uint8(pic);
figure;imshow(pic);
