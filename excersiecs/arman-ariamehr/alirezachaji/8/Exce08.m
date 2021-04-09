close all
clear all
clc
a=imread("benchmark\lena.png");
CurvaJV=figure('Name','Original Image');
imshow(a);
b=a;
n=size(a);
b=a;
 %%%%%%%%%%%%%%%%%%%%%%% Flip Horizentaly  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b(1:n(1),n(2):-1:1,1:n(3))=a(1:n(1),1:n(2),1:n(3));
CurvaJV=figure('Name','Reverse Horizentaly');
imshow(b)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 45 Degree %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CurvaJV=figure('Name','45 Degree');
image_rotate(a,45);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 90 Degree %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CurvaJV=figure('Name','90 Degree');
image_rotate(a,90);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 180 Degree %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CurvaJV=figure('Name','120 Degree');
image_rotate(a,120);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 180 Degree %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CurvaJV=figure('Name','180 Degree');
image_rotate(a,180);

