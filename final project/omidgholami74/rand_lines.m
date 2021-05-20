function image_line = rand_lines(img,n)
        [h,w] =size(img);
    for i=1:n
          img =draw_line(img,randi(h) ,randi(w) , randi(h) ,randi(w));
    end 
 image_line= img;     
end

