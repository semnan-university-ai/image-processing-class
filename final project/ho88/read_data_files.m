function [] = read_data_files()

% numbers(:,:,1) = dlmread("numbers\0.txt");
% numbers(:,:,2) = dlmread("numbers\1.txt");
% numbers(:,:,3) = dlmread("numbers\2.txt");
% numbers(:,:,4) = dlmread("numbers\3.txt");
% numbers(:,:,5) = dlmread("numbers\4.txt");
% numbers(:,:,6) = dlmread("numbers\5.txt");
% numbers(:,:,7) = dlmread("numbers\6.txt");
% numbers(:,:,8) = dlmread("numbers\7.txt");
% numbers(:,:,9) = dlmread("numbers\8.txt");
% numbers(:,:,10) = dlmread("numbers\9.txt");
% numbers = uint8(numbers);

files = dir('characters\*.txt');

for i=1 : length(files)
   
    filename = files(i).name;
    data(:,:,i) = dlmread("characters\"+filename);
    new_filename = filename(1:end-4);
    if strlength(new_filename)==2
       new_filename = new_filename(1); 
    end
    filenames(i) = new_filename;
end
% data = char_matrix;
% chars = char;
% save char_matrix
% save char
clear i filename files new_filename
save data

end