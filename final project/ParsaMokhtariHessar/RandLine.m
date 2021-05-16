function image = RandLine(image,threshhold,x,y,b,n)

    for i=1:ceil(rand*n) 
        image=Line(image,threshhold,randi([-x x ]),randi([-y y ]),randi([-b b]));
    end 

end

