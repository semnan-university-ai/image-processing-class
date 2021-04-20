clc;
clear;
close all;

namePic=zeros(200,500,'uint8');

for i=150 : 425
    for j=97 : 103
        namePic(j,i)=255;     
    end
end

y=122;
x=425;
for j=19:25
for i=1 : 0.01: 8
    ci=  round((j*cos(i))+y);
    si= round((j*sin(i))+x);
    namePic(ci,si)=255;
end
end
    
y=122;
x=225;
for j=19: 25
for i=1 : 0.01: 8
    ci=  round((j*cos(i))+y);
    si= round((j*sin(i))+x);
    namePic(ci,si)=255;
end
end

y=100;
x=325;
for j=44:50
for i=1.5 : 0.01: 4
    ci=  round((j*cos(i))+y);
    si= round((j*sin(i))+x);
    namePic(ci,si)=255;
end
end
size=60;
start=[100-(size/2),60+(size/2)];
y=start(1);
for x =1 :(size/2)
          for j=-3:3
             namePic(start(1)+size-x+j,start(2)+2*x)=255;
             namePic(start(1)+size-x+j,start(2)+(2*x)+1)=255;
          
          
             namePic(y+j,start(2)+2*x)=255;
             namePic(y+j,start(2)+(2*x)+1)=255;
          end
          y=y+1;    
   
end

imshow(namePic);