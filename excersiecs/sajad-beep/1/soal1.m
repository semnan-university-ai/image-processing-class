x=16;
y=16;
imagechess=zeros(x,y);
for i=1:x
    for j=1:y
        if (mod(j,2) ==0 && mod(i,2) ==0)
            imagechess(i,j)=255;
        
        elseif(mod(j,2) ==0 && mod(i,2) ==1)
            imagechess(i,j)=0;
        elseif(mod(j,2) ==1 && mod(i,2) ==0)
            imagechess(i,j)=0;
            
        elseif(mod(j,2) ==1 && mod(i,2) ==1)
            imagechess(i,j)=255;
        end
    end
end
figure,
imshow(imagechess);