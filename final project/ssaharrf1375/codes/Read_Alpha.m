function [img_name, img_count, alph] = Read_Alpha(address)
D = dir(address);

img_count = 1;
alph = zeros(25,25,26);
img_name = cell(1,26);

for i=1 : size(D,1)
    Name = D(i).name;
    find = strfind(Name, '.txt');
    empty = isempty(find);
    num = isnumeric(find);
    if (empty == 0) && (num == 1)
        alph(:,:,img_count) = dlmread(strcat(address,Name));
        img_name{img_count} = Name(1);
        img_count = img_count + 1;
    end
end

img_count = img_count - 1;

alph = uint8(alph);
end