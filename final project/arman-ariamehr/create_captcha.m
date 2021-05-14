function [output , name] = create_captcha(amount)
    captcha = uint8( zeros(25 , 25 * amount) );
    name = '';
    
    j = 1;
    for i = 1 : amount
        [pic , let] = choose_a_pic();
        col = size(pic,2);
    
        captcha( : , j : j + col - 1) = pic;
    
        j = j + col;
        
        name = strcat(name,let);
    end
    
    output = captcha;
    name = strcat(name , '.png');
end

