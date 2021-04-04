function ave=func_13(add,ps)
pic=imread(add);
subplot(1,3,1);imshow(pic);
pic(:,:,:)=255-pic(:,:,:);
subplot(1,3,2);imshow(pic);
n=size(pic);
ave=zeros(1,3);
for i=1:ps
    x=randi(n(1));
    y=randi(n(2));
    z=round(mod(randi(10),2));
    pic(x,y,:)=z*255;
end
s=0;
for i=1:n(1)
    for j=1:n(2)
        for k=1:3
            ave(k)=ave(k)+double(pic(i,j,k));
        end
    end
end  
ave=round(ave/(n(1)*n(2)));
subplot(1,3,3);imshow(pic)            