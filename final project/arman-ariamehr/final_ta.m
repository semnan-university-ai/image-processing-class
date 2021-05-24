numbers_count = input('number of letter/digit : ');
width = input('width : ');
height = input('height : ');

<<<<<<< HEAD
total = 3;
=======
total = 150;
>>>>>>> parent of c9e55075 (پروژه پایانی)

data = cell(total,4);

for amount = 1 : total
    [captcha_image , captcha_name] = create_captcha(numbers_count);
    captcha_image = change_captcha(captcha_image , width , height);
    
    number_test = sprintf('%03d',amount);
    address = ['captchas\' number_test '.png'];
    imwrite(captcha_image,address);
    
    ocr_result = ocr(captcha_image);
    ocr_text = ocr_result.Text;
    
    imshow(captcha_image);
    human_text = input('what do you see : ' , 's');
    
    data{amount , 1} = number_test;
    data{amount , 2} = captcha_name(1 : numbers_count);
    data{amount , 3} = ocr_text;
    data{amount , 4} = human_text;
end

create_excel(data);