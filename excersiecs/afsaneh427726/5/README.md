clc;
clear data;
clear all;

تصویر را خوانده و سایز آن را کوچک می کنیم

image=imread('C:\Users\as\Desktop\WhatsApp Image 2021-03-13 at 01.17.47.jpeg');
image=rgb2gray(image);
imshow(image)
image=imresize(image,0.5);

(1.jpg)یک ماتریس به اندازه نصف تصویر ایجاد کرده و نصف تصویر کوزه را با درایه های 1 جایگزین می کنیم 

w=ones(540,152);
image(1:540,1:152)=w;
imshow(image)
figure;

(2.jpg)از ابتدای تصویر شروع کرده و تا نصف آن پیش می رویم وستونها را به صورت برعکس از نیمه دیگر تصویر کپی می کنیم تا عکس کامل شود

for i=1:540
    for j=1:152
        image(i,153-j)=image(i,j+152);
    end
end
imshow(image)
