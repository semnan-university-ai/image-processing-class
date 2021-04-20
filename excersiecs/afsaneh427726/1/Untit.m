clc;
clear data;
clear all;
a=input('tool ra vared kon :   ')
b=input('arz ra vared kon :   ')
c=input('andazeye morabbaha vared kon :   ')
w=ones(a*c,b*c);

for i=1:a*c
    if (mod(i,2*c)==1)
        for j=1:b*c
            if (mod(j,2*c)==1)
            w(i:(i+(c-1)),j:(j+(c-1)))=0;
            end
        end
    end
end
for i=2:a*c
    if (mod((i),(2*c))==(c+1))
        for j=2:b*c
            if (mod(j,(2*c))==(c+1))
            w(i:(i+(c-1)),j:(j+(c-1)))=0;
            end
        end
    end
end
 imshow(w)