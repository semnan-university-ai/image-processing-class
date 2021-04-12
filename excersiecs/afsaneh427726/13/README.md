
ابتدا تصویر خاکستری را نگاتیو کرده

clc;
clear data;
clear all;
image=imread('C:\Users\as\Downloads\boat.png');
[a,b]=size(image);
for i=1:a
    for j=1:b
        image(i,j)=255-image(i,j);
    end 
end

سپس با 4 عدد مختلف نویز فلفل نمکی را اعمال کرده و تصاویر را نمایش می دهیم و میانگین پیکسلهای آن را محاسبه می کنیم:

v=2000;
for n=1:4


for m=1:v

i=randi(a);

j=randi(b);

image(i,j)=0;

end

for m=1:v

i=randi(a);

j=randi(b);

image(i,j)=255;
end
v=v+2000;
figure;
imshow(image);
r=sum(sum(image));
average(n)=r/(a*b);
end

و در انتها مقدار میانگین پیکسل ها را نمایش می دهیم:
disp('average pixels in noise 4000= ');
disp(average(1));
disp('average pixels in noise 8000= ');
disp(average(2));
disp('average pixels in noise 12000= ');
disp(average(3));
disp('average pixels in noise 18000= ');
disp(average(4));

خروجی:

average pixels in noise 4000= 
  125.3570

average pixels in noise 8000= 
  125.4743

average pixels in noise 12000= 
  125.5937

average pixels in noise 18000= 
  125.8091
