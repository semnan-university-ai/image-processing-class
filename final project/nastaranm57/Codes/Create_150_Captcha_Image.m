function Create_150_Captcha_Image(alphabet, alphabet_count, image_name, image_count, width, height, save_adress)
Consecutive_numbers = 1;
while Consecutive_numbers == 1
    captcha_alphabet = unique_random_num_captcha(alphabet_count, image_count);
    for r=1:alphabet_count-1
        if abs(captcha_alphabet(r+1) - captcha_alphabet(r)) == 1
            break
        else
            Consecutive_numbers = 0;
        end
    end
end

method = {'nearest', 'bilinear', 'bicubic'};
MTD=3;
angle = 0;

captcha_image_r = Create_Captcha_Image(alphabet_count, captcha_alphabet, image_count, alphabet, method, MTD, height, width);

Noise = {'poisson', 'gaussian', 'salt & pepper', 'speckle'};
captcha_image_r = imnoise(captcha_image_r,Noise{3},.2);

LineWidth = 1;
captcha_image_r = Line_Draw(captcha_image_r, width, height, LineWidth);


alphabet_selected = cell(1,size(captcha_alphabet,2));

for j=1:size(captcha_alphabet,2)
    N = captcha_alphabet(j);
    alphabet_selected{1,j} = image_name{1,N};
end

Alphabet_Selected = '';

for k=1:size(captcha_alphabet,2)
    Alphabet_Selected = strcat(Alphabet_Selected,alphabet_selected{1,k});
end

image_type = '.png';
imwrite(captcha_image_r, strcat(save_adress,Alphabet_Selected,image_type));
end