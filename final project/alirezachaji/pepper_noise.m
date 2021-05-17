function pic=pepper_noise(pic,ps)
n=size(pic);
px=round((ps*n(1)*n(2))/100);
for i=1:px
    x=randi(n(1));
    y=randi(n(2));
    z=round(mod(randi(10),2));
    pic(x,y)=z;
end
