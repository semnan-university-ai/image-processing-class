% Tamrin 20
% marya
m=zeros(8,8); % create m
m(5,1:6)=1;
m(6,4)=1;
m(6,6)=1;
m(7,4:6)=1;
a=zeros(8);    % create a
a(1:5, 4)=1;
a(5,5:8)=1;
r=zeros(8);    % create r
r(6,2)=1; r(5,3)=1 ;r(4,4);r(5,4)=1;r(4,5)=1; 
y=zeros(8);    % create y
y(3:5,5)=1;
y(5,2:5)=1;
y(7,3:5)=1;
subplot(151)  
imshow(a)
subplot(152)
imshow(y)
subplot(153)
imshow(r)
subplot(154)
imshow(a)
subplot(155)
imshow(m)

