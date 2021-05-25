function  image = noise(img,a)
a=rand()/10;
image=imnoise(img,'salt & pepper',a);

end


