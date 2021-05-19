function [image_name, image_count, alphabet] = Read_Alphabet(address)
D = dir(address);

image_count = 1;
alphabet = zeros(25,25,26);
image_name = cell(1,26);

for i=1 : size(D,1)
    Name = D(i).name;
    find = strfind(Name, '.txt');
    empty = isempty(find);
    num = isnumeric(find);
    if (empty == 0) && (num == 1)
        alphabet(:,:,image_count) = dlmread(strcat(address,Name));
        image_name{image_count} = Name(1);
        image_count = image_count + 1;
    end
end

image_count = image_count - 1;

alphabet = uint8(alphabet);
end
