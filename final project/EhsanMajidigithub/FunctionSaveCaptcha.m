function  FunctionSaveCaptcha(numbers,count)


for i = 1:150
    [captcha_image] = FunctionCaptcha(count,numbers);
    imwrite(captcha_image, 'saveCapta\'+string(i)+'.jpg'); 
    subplot(10,15,i),imshow(captcha_image),title(i); 
  
end

end