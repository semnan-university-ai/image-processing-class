close all;
clear;
clc;

path = dir('150_Captcha/*.jpg');
count = 0;
for i=1:1:150
   name = path(i).name;
   f = strcat('150_Captcha/',name);
   im = imread(f);
   fprintf('IMAGE %d===============================================\n',i);
   result = ocr(im)
   [pathstr, n, ext] = fileparts(name);
   r_text = result.Words;
   tf = strcmp(r_text,n);
   if(tf==0)
       continue;
   else
       count = count + 1;
   end
   fprintf("%s\n",n);
end
acc = (count/150)*100;
fprintf("\nCount : %d\n",count);
fprintf("\nAccuracy : %.2f\n",acc);