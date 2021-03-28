close all
clear
clc
axis([1 13  1 13]);
x=1
for i=3:1:10
    for j=3:1:10
        if isequal(x,0)
            rectangle('position',[j i 1 1],'facecolor',[.800  .800  .800])
            x=1;
        else
            rectangle('position',[j i 1 1],'facecolor',[0 0 0])
            x=0;
        end
    end
    if isequal(x,0)
        x=1;
    else 
        x=0;
    end
end