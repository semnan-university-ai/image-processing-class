clc;
clear;
close all;

name=ones(200,500);

for i=200 : 425
    for j=97 : 103
        name(j,i)=0;     
    end
end

y=122;
x=425;
for j=19:25
for i=1 : 0.01: 8
    ci=  round((j*cos(i))+y);
    si= round((j*sin(i))+x);
    name(ci,si)=0;
end
end

    
y=100;
x=325;
for j=19: 25
for i=1 : 0.01: 8
    ci=  round((j*cos(i))+y);
    si= round((j*sin(i))+x);
    name(ci,si)=0;
end
end
for i=250 : 253
    for j=20 : 100
        name(j,i)=0;     
    end
end
for i=200 : 203
    for j=20 : 100
        name(j,i)=0;     
    end
end

imshow(name);