function pic=rand_inv(pic,height,width)
x=randi(height-50);
y=randi(width-50);
for i=20:height-20
    for j=y:min((floor(width/4)+y),width)
       pic(i,j)=1-pic(i,j);   
    end
end
end