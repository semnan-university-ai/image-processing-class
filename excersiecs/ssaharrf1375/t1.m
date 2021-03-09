clc 
clear 
close all   
w=ones(400);   
for i=0:40:400-40     
    for j=0:40:400-40         
        w(i+1:i+20,j+1:j+20)=0;         
        w(i+20:i+40,j+20:j+40)=0;     
    end
end
imshow(w)
imwrite(w,'prog8.jpg') 