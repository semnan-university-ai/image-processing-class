a=zeros(1000,1000);
r =input('shoaa ='); %radius
% m=r;
x=input('X markaze=');
y=input('y markaze =');

a(x,y)=1;

a= bwdist(a) <= r;
imshow(a)
