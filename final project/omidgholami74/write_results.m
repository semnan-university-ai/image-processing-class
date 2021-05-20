function write2xls = write_results(img,captcha_name,n)

 	ocr_result=ocr(img);
    recognizedText =ocr_result.Text;
    A = {(captcha_name), (recognizedText)};
    sheet = 1;
    xlRange = strcat('E',num2str(n+1));
    xlswrite('result.xls',A,sheet,xlRange)
end

