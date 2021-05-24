function trimmed_ocr_text = ocr_detection(img)

ocr_text = ocr(img);
trimmed_ocr_text = regexprep(ocr_text.Text,'\s+','');


end