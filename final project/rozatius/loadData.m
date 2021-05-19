function [outmatrix] = loadData(pathDir,method)
%LOADDATA  function creates an matrix of the characters
%   Detailed explanation goes here
if method == 1
    numbers(:,:,1) = dlmread(pathDir+"\1.txt");
    numbers(:,:,2) = dlmread(pathDir+"\2.txt");
    numbers(:,:,3) = dlmread(pathDir+"\3.txt");
    numbers(:,:,4) = dlmread(pathDir+"\4.txt");
    numbers(:,:,5) = dlmread(pathDir+"\5.txt");
    numbers(:,:,6) = dlmread(pathDir+"\6.txt");
    numbers(:,:,7) = dlmread(pathDir+"\7.txt");
    numbers(:,:,8) = dlmread(pathDir+"\8.txt");
    numbers(:,:,9) = dlmread(pathDir+"\9.txt");
    numbers(:,:,10) = dlmread(pathDir+"\0.txt");
    numbers = uint8(numbers);
end
outmatrix = numbers;
end

