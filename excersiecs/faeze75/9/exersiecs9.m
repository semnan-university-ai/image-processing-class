image=imread('lena.png');
imshow(image);
x=input('Enter x of position: ');           
y=input('Enter y of position: ');
l=input('Enter Width of cropping area: ');
w=input('Enter length of cropping area: ');
s=size(image);
crop=zeros(1,2);
for i=1:l
    for j=1:w
        
        crop(j,i,1:s(3))=image(x+j,y+i,1:s(3));   

    end
end

Icrop=uint8(crop);
figure,
imshow(Icrop);
