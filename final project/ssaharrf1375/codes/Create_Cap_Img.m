function cap_img_r = Create_Cap_Img(alph_count, cap_alph, img_count, alph, method, MTD, he, wi)

cap_img_r = zeros(25,25*alph_count);

for i = 1 : alph_count
    if cap_alph(1,i) < 1
        cap_alph(1,i) = 1;
    end
    if cap_alph(1,i) > img_count
        cap_alph(1,i) = img_count;
    end
    
    if rem(i,2) == 0
        angle = 9;
    else
        angle = -10;
    end
    cap_img_r(:,(25*i)-24:25*i) = imrotate(alph(:,:,cap_alph(1,i)),i+angle,'crop',method{MTD});
end

cap_img_r = uint8(cap_img_r);

cap_img_r = imresize(cap_img_r, [he wi]);
end