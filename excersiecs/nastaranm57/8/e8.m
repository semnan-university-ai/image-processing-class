clc;
clear;
x=imread("./8.jpg");
x=imresize(x,[200 200]);
x3=double(x);
degree=input('daraje ra vared konid');
for i=1:400
for j=1:400
x1(i,j)=round((i-100).*cosd(degree)+(j-100).*sind(degree)+100);
x2(i,j)=round(-(i-100).*sind(degree)+(j-100).*cosd(degree)+100);
if(x1(i,j)<=200)&&(x1(i,j)>0)&&(x2(i,j)<=200)&&(x2(i,j)>0)
      a(i,j,:)=x3(x1(i,j),x2(i,j),:);
  end;
  end;
  end;
image(uint8(a));
imshow(a(i,j));
