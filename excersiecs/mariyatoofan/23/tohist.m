function [histo]=tohist(image)
[x,y]=size(image);
histo=zeros(1,256);
for a=1:x
    for b=1:y
        cont=image(a,b);
        histo(cont+1)=histo(cont+1)+1;
    end
end
histo=fix((histo/max(histo))*255);