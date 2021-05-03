function image = his(pic,n)
his=zeros(1,255);
[h,w,k] = size(pic);
    for i=1:h
        for j=1:w
            his(1,pic(i,j,n))=his(1,pic(i,j,n))+1;
        end
    end
    image =his;
end

