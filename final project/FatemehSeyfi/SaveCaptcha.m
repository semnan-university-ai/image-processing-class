function [] = SaveCaptcha()


for k=1:150
    saveas(figure(k),fullfile('..\Final\Save_Captchas',['captcha' num2str(k) '.jpg']));
end


  
end


