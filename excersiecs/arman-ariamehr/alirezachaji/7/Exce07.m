% Depending on the specifications of your computer, running this program
% may take some time, so wait at least 5 seconds.
close all
clear all
clc
pic=zeros(1500,1500);

% Draw a Rectangle in pos xpos and ypos :
xpos=100;
ypos=150;
l=300;
w=200;

pic=draw_line(pic,xpos,ypos,xpos,(ypos+l));
pic=draw_line(pic,xpos+w,ypos,xpos+w,ypos+l);
pic=draw_line(pic,xpos,ypos,xpos+w,ypos);
pic=draw_line(pic,xpos,ypos+l,xpos+w,ypos+l);

% Draw a Square in pos xpos and ypos :
xpos=100;
ypos=650;
l=200;
pic=draw_line(pic,xpos,ypos,xpos,(ypos+l));
pic=draw_line(pic,xpos+l,ypos,xpos+l,ypos+l);
pic=draw_line(pic,xpos,ypos,xpos+l,ypos);
pic=draw_line(pic,xpos,ypos+l,xpos+l,ypos+l);

%Draw a line
p1=[400 1000];
p2=[100 1400];
pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));

% Draw a triangle when we have 3 corners position 
p1=[800 100]
p2=[700 400]
p3=[500 300]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p1(1),p1(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p2(1),p2(2));

% Draw a lozenge 

p1=[700 600]
p2=[500 700]
p3=[700 800]
p4=[900 700]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p1(1),p1(2),p4(1),p4(2));
pic=draw_line(pic,p2(1),p2(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p4(1),p4(2));

%Draw a Pentagon
p1=[900 1000]
p2=[700 900]
p3=[500 1150]
p4=[700 1400]
p5=[900 1300]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p2(1),p2(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p4(1),p4(2));
pic=draw_line(pic,p4(1),p4(2),p5(1),p5(2));
pic=draw_line(pic,p1(1),p1(2),p5(1),p5(2));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw another type of Triangle
p1=[1400 100]
p2=[1400 500]
p3=[1000 300]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p1(1),p1(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p2(1),p2(2));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a Trapezoid

p1=[1400 700]
p2=[1200 600]
p3=[1200 1000]
p4=[1400 900]

pic=draw_line(pic,p1(1),p1(2),p2(1),p2(2));
pic=draw_line(pic,p1(1),p1(2),p4(1),p4(2));
pic=draw_line(pic,p2(1),p2(2),p3(1),p3(2));
pic=draw_line(pic,p3(1),p3(2),p4(1),p4(2));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw a Circle
r=150;
cx=1300;
cy=1300;
pic=draw_circle(pic,r,cx,cy);

%imshow(pic)