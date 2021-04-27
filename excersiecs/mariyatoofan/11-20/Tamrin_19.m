%# read the image
clc
clear all
close all
digits={'A','B','C','D','E','F','G','H','I','J'};    % digits queue
r= floor(10*rand(1,3));                              % make random number

if r(1)==0                                           % check if random number =0
    kap1='zero';
else
kap1= digits{r(1)};                                  % set it to A
end

if r(2)==0                                           % same for 2nd Character
    kap2='J';
else
kap2= digits{r(2)};
end
if r(3)==0                                           % same for 3rd char
kap3= 'J';
else
   kap3= digits{r(3)};
end
ext='.png';    % file extension
subplot(131)
file1=strcat(kap1,ext);  % string concatenation
f1=imread(file1);         % read image
imshow(f1)              % show image

subplot(132)   
file2=strcat(kap2,ext);      % open file
f2=imread(file2);            % read file
imshow(f2)                   % show image file

subplot(133)          % subplot 1st row 3rd col, choose 3rd image
file3=strcat(kap3,ext);      % open file
f3=imread(file3);            % read file
imshow(f3)                   % show image file

x = input('What is first digit:','s');       % get input digits
y = input('What is second digit:','s');
z = input('What is third digit:','s');

if (x)==digits{r(1)} && (y)==digits{r(2)} && (z)==digits{r(3)} % check if digits = list queue
    disp('Correct Capcha')   % correct
else
    disp('Incorrect Capcha')   % incorrect
end