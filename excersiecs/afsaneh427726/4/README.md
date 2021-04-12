clc;
clear data;
clear all;

یک ماتریس500*500  با درایه های 1 ایجاد می کنیم

w=ones(500,500,3);
w=uint8(w);

به ترتیب تصاویررا خوانده و ماتریس 100*100 گوشه پایین سمت راست آن را در درایه های ماتریس  جایگزین می کنیم.

w1=imread('C:\Program Files\MATLAB\airplane.png');

w(401:500,401:500,1:3)=w1(413:512,413:512,1:3);

w1=imread('C:\Program Files\MATLAB\baboon.png');

w(301:400,401:500,1:3)=w1(413:512,413:512,1:3);

w1=imread('C:\Program Files\MATLAB\barbara.png');
w(201:300,401:500)=w1(413:512,413:512);
w1=imread('C:\Program Files\MATLAB\boat.png');
w(101:200,401:500)=w1(413:512,413:512);
w5=imread('C:\Program Files\MATLAB\cat.png');
w(1:100,401:500,1:3)=w5(391:490,391:490,1:3);
w6=imread('C:\Program Files\MATLAB\fruits.png');
w(1:100,301:400,1:3)=w6(413:512,413:512,1:3);
w7=imread('C:\Program Files\MATLAB\girl.png');
w(101:200,301:400,1:3)=w7(413:512,413:512,1:3);
w8=imread('C:\Program Files\MATLAB\frymire.png');
w(201:300,301:400,1:3)=w8(413:512,413:512,1:3);
w9=imread('C:\Program Files\MATLAB\monarch.png');
w(301:400,301:400,1:3)=w9(413:512,413:512,1:3);
w10=imread('C:\Program Files\MATLAB\lena.png');
w(401:500,301:400,1:3)=w10(413:512,413:512,1:3);
w11=imread('C:\Program Files\MATLAB\peppers.png');
w(1:100,201:300,1:3)=w11(413:512,413:512,1:3);
w8=imread('C:\Program Files\MATLAB\pool.png');
 w(101:200,201:300,1:3)=w8(284:383,411:510,1:3);
 w8=imread('C:\Program Files\MATLAB\sails.png');
 w(201:300,201:300,1:3)=w8(413:512,413:512,1:3);
  w8=imread('C:\Program Files\MATLAB\watch.png');
 w(301:400,201:300,1:3)=w8(413:512,413:512,1:3);
 w8=imread('C:\Program Files\MATLAB\serrano.png');
 w(401:500,201:300,1:3)=w8(695:794,530:629,1:3);
  w8=imread('C:\Program Files\MATLAB\tulips.png');
 w(401:500,101:200,1:3)=w8(413:512,669:768,1:3);
 w8=imread('C:\Program Files\MATLAB\arctichare.png');
 w(301:400,101:200,1:3)=w8(301:400,495:594,1:3);
 w8=imread('C:\Program Files\MATLAB\goldhill.png');
 w(201:300,101:200)=w8(413:512,413:512);
 w8=imread('C:\Program Files\MATLAB\goldhill.png');
 w(201:300,101:200)=w8(413:512,413:512);
  w8=imread('C:\Program Files\MATLAB\zelda.png');
 w(101:200,101:200)=w8(413:512,413:512);
  w8=imread('C:\Program Files\MATLAB\cameraman.tif');
 w(1:100,101:200)=w8(157:256,157:256);
  w8=imread('C:\Program Files\MATLAB\mountain.png');
 w(1:100,1:100)=w8(157:256,157:256);
 w8=imread('C:\Program Files\MATLAB\boy.bmp');
 w(101:200,1:100)=w8(413:512,669:768);
 w8=imread('C:\Program Files\MATLAB\sails.bmp');
 w(201:300,1:100)=w8(413:512,669:768);
 w8=imread('C:\Program Files\MATLAB\tulips.png');
 w(301:400,1:100,1:3)=w8(413:512,669:768,1:3);
 w8=imread('C:\Program Files\MATLAB\serrano.png');
 w(401:500,1:100,1:3)=w8(695:794,530:629,1:3);
imshow(w)

