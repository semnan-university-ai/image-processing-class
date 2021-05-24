function image = Line(image,threshhold,x,y,b)
[width,height]=size(image);
        for i=1:width
            for j=1:height
                z = i*(x)+j*(y)-b; 
                if z <= 100+threshhold && z>=100-threshhold
                    if image == 255
                        image(i,j) = 0;                   
                    else
                        image(i,j) = 255 ;                  
                    end                   
                end         
            end   
        end
end

