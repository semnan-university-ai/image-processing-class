pic=imread('C:\Users\PC\Desktop\cat.png');
subplot(1,2,1);imshow(pic);
title('Original Image')
[n,m,p]=size(pic);
for i=1:n
    for j=1:m
        for k=1:p
            pic(i,j,k)=floor(pic(i,j,k)/51)*51;
        end
    end
end 
pic=uint8(pic);
subplot(1,2,2);imshow(pic);
title('Safe Color')