function [filesName,resultOcr] = ocr(pathDir)
s = struct;
imgfiles = dir(pathDir+'*.jpg');
result=repmat(s,1,length(imgfiles));
for i = 1:length(imgfiles)
    imgCaptcha=imread(pathDir+imgfiles(i).name);
    txtCaptcha=split(imgfiles(i).name,["(",")"]);
    result(i).fileName= imgfiles(i).name;
    ocr = ocr(imgCaptcha);
    
    if string(txtCaptcha(2)) == strtrim(string(ocr.Text))
        result(i).resultOcr=true;
    else 
        result(i).resultOcr=false;
    end
end
filesName = split([result.fileName],'.jpg');
resultOcr = [result.resultOcr];
end

