function img_noise = my_noise(image,percent)
        [h,w]=size(image);
        pixels =h*w;
        number_of_noise =floor((percent*pixels)/2)
    for m=1:number_of_noise
        i=randi(h);
        j=randi(w);
        image(i,j)=255;
    end
    for m=1:number_of_noise
        i=randi(h);
        j=randi(w);
        image(i,j)=0;
    end

img_noise =image;
end

