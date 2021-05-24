function img = Rand(img,threshhold,x,y,b,n)

    for i=1:ceil(rand*n) 
        img=Line(img,threshhold,randi([-x x ]),randi([-y y ]),randi([-b b]));
    end 

end

