function [ outnumber ] = FunctionData()

numbers(:,:,1) = dlmread("number\1.txt");
numbers(:,:,2) = dlmread("number\2.txt");
numbers(:,:,3) = dlmread("number\3.txt");
numbers(:,:,4) = dlmread("number\4.txt");
numbers(:,:,5) = dlmread("number\5.txt");
numbers(:,:,6) = dlmread("number\6.txt");
numbers(:,:,7) = dlmread("number\7.txt");
numbers(:,:,8) = dlmread("number\8.txt");
numbers(:,:,9) = dlmread("number\9.txt");
numbers(:,:,10) = dlmread("number\0.txt");

numbers = uint8(numbers);
outnumber = numbers;
end

