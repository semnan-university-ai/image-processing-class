image=imread('C:\Users\PC\Desktop\mountain.png');
subplot(1,2,1)
imshow(image);
title 'tasvire asli'
for j=1:640 %arze tasvir
    for i=1:150 %tule tasvir
     if 165<image(i,j)
         image(i,j)=0;
     end
     if image(i+1,j)<165
         break;
     end
    end
end
image=uint8(image);
subplot(1,2,2)
imshow(image);
title 'tasvire nahaii'