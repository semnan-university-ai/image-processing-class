image = imread('benchmark\watch.png');
subplot(1,2,1);
imshow(image);
title('orginal');
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);

k=90;
for x=280:580
    if k<0
        k=0;
    end
    for y=329+k:700-k 
        
 
            if ~(r(x,y)>g(x,y) && g(x,y)>b(x,y) && r(x,y+4)> g(x,y+4) && g(x,y+4)>b(x,y+4))
                image(x,y,:)=[255 255 255];
            end       
    end
    if x<500
        k=k-1;
    elseif x>560
        k=k+6;
    else
        k=k+1;
    end
end
subplot(1,2,2);
imshow(image);
title('new');