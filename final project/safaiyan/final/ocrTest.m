clc;
close all;
clear;

numbers_count = 4; % count of number
% folder='simple_capcha';  % simple capcha

folder='complex_capcha'; % complex capcha

I=dir(fullfile(folder,'*.jpg'));
correct_count=0;
for k=1:numel(I)
  filename=fullfile(folder,I(k).name);
  img=imread(filename);
  orginal_number=str2double(regexp(filename, '\d+', 'match'));
  
  ocrDetect=ocr(img,'CharacterSet','0123456789');
  oct_temp=regexp(ocrDetect.Text,'\d*','match');
  detected_number=str2double(oct_temp(:,:));
  
  if(orginal_number==detected_number)
      correct_count=correct_count+1
  end 
end


accuracy=100*correct_count/numel(I)  % accuracy percent