function [image] = img (a,b)
 image = zeros(0);
for i = 1 : a
    if b(1,i) < 1
        b(1,i) = 1;
    end
    if b(1,i) > 26
        b(1,i) = 26;
    end
    
    image=[image rotate(ch(b(1,i)))];
    

end
m=randi(4);    
    if m==1
        h = ones(3,3) / 9;
        image = imfilter(image,h);
    end 
    if  m==2
        image = imnoise(image,'salt & pepper',0.02);
    end  
    if  m==3
        image= imnoise(image,'speckle',3);

    end 
    if m==4
        image(16,1:i*25)=255;
    end

end