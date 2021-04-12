clc;
clear data;
clear all;
b=input('tool ra vared kon :   ')
a=input('arz ra vared kon :   ')
c=input('andazeye morabbaha vared kon :   ')
w=ones(a*c,b*c);

for m=1:round((b)/2)
    n=((m-1)*2*c)+1;
for i=n:(n+c-1)
    for j=0:(2*c):(a-1)*(c)
        w((j+1):(j+c),i)=0;
    end
end
end
for m=1:round((b-1)/2)
    n=((m*2*c)+1)-c;
for i=n:(n+c-1)
    for j=c:(2*c):(a-1)*(c)
        w((j+1):(j+c),i)=0;
    end
end
end
    
uint8(w);
 imshow(w)