close all;
clear all;
clc;
g=cell(150,7);
correct_ocr=0;
correct_guess=0;
g(1,:)={'Item','Captcha','Image','OCR','Correctness_OCR','Guess','Correctness_guess'};
for i=1:150
    n=randi([3,6]);
    height=randi([100,400]);
    width=randi([400,n*150]);
    [pic,code]=main_func(n,height,width);
    g(i+1,1)={i};
    g(i+1,2)={code};
    g(i+1,3)={pic};
    d=ocr(pic);
    ocr_out=d.Text;
    g(i+1,4)={ocr_out};
    sc=size(code);
    so=size(ocr_out);
    if (sc(2)==so(2))
        if(ocr_out==char(code))
            correct_ocr=correct_ocr+1;
            g(i+1,5)={1};
        else
            g(i+1,5)={0};
        end  
    else
        g(i+1,5)={0};
    end
    a=input("Enter The Captcha Letters no "+num2str(i)+": ",'s');
    g(i+1,6)={a};
    so=size(a);
    if (sc(2)==so(2))
        if(a==char(code))
            correct_guess=correct_guess+1;
            g(i+1,7)={1};
        else
            g(i+1,7)={0};
        end  
    else
        g(i+1,5)={0};
    end
    imwrite(pic,num2str(i)+".png");
end 
xlswrite('Result.xlsx',g);



