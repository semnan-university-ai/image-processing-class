function [txtocr,resultOcr,imgRGB] = ocrDetect(txtCaptcha,imgCaptcha)
%OCRDETET  function compare an set image of the captcha with real content
%   input parameters is path of a folder that is contain images of captcha

ocrCaptcha = ocr(imgCaptcha);
imgRGB = zeros(size(imgCaptcha,1),size(imgCaptcha,2),3);
txtocr = strtrim(string(ocrCaptcha.Text));
if string(txtCaptcha) == txtocr
    resultOcr = true;
    blackPixels = imgCaptcha == 0;
    imgRGB(:,:,2) = blackPixels;
else 
    resultOcr = false;
    blackPixels = imgCaptcha == 0;
    imgRGB(:,:,1) = blackPixels;
end

end

