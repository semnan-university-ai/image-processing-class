function filter_cap_img_r = Filter_Cap_Img(he, wi, alph_count, method, cap_img_r,Filter_size)
Cap_img = zeros(he+50, wi+(alph_count*50));
slice_img = wi/alph_count;
X=0;
for i=1:alph_count
    if rem(i,2)==0
        angle = 9;
    else
        angle = -10;
    end
    Cap_img(25:he+24,((slice_img*i)-(slice_img-1))+X:(slice_img*i)+X) = imrotate(cap_img_r(:,(slice_img*i)-(slice_img-1):slice_img*i),-(i+angle),'crop', method{1});
    X = X+50;
end

Cap_img = uint8(Cap_img);

filter_cap_img_r = imgaussfilt(Cap_img,5);

% filter_cap_img_r = medfilt2(filter_cap_img_r,[Filter_size,Filter_size]);
% filter_cap_img_r = medfilt2(filter_cap_img_r,[Filter_size-4,Filter_size-4]);
% filter_cap_img_r = medfilt2(filter_cap_img_r,[5,5]);
end