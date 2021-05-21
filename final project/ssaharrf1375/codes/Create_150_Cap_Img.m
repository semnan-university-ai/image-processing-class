function Create_150_Cap_Img(alph, alph_count, img_name, img_count, wi, he, save_address)
Consecutive_num = 1;
while Consecutive_num == 1
    cap_alph = RandomNum(alph_count, img_count);
    for r=1:alph_count-1
        if abs(cap_alph(r+1) - cap_alph(r)) == 1
            break
        else
            Consecutive_num = 0;
        end
    end
end

method = {'nearest', 'bilinear', 'bicubic'};
MTD=3;
angle = 0;

cap_img_r = Create_Cap_Img(alph_count, cap_alph, img_count, alph, method, MTD, he, wi);

Noise = {'poisson', 'gaussian', 'salt & pepper', 'speckle'};
cap_img_r = imnoise(cap_img_r,Noise{3},.2);

LineWi = 1;
cap_img_r = LineDraw(cap_img_r, wi, he, LineWi);


alph_selected = cell(1,size(cap_alph,2));

for j=1:size(cap_alph,2)
    N = cap_alph(j);
    alph_selected{1,j} = img_name{1,N};
end

Alph_Selected = '';

for k=1:size(cap_alph,2)
    Alph_Selected = strcat(Alph_Selected,alph_selected{1,k});
end

img_type = '.png';
imwrite(cap_img_r, strcat(save_address,Alph_Selected,img_type));
end