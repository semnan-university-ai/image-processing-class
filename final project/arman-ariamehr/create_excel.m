function create_excel(data)
    header = strings(1,4);
    header(1,1) = 'number_test';
    header(1,2) = 'main_name';
    header(1,3) = 'ocr_result_text';
    header(1,4) = 'human_result';
    
    xlswrite('result.xlsx' , header , 'Sheet1' ,'A1');
    xlswrite('result.xlsx' , data , 'Sheet1' , 'A2');
end

