clc;
clear;
close all;

image = imread('zelda.png');

startX=300;
startY=247;

for w=1:50
for i=1:50
    for j=1 : 40
        x=startX+i;
        y=startY+j;

        sS=[image(y-1,x-1),image(y-1,x),image(y-1,x+1),image(y,x+1),image(y+1,x+1),image(y+1,x),image(y+1,x-1),image(y,x-1)];
        sumx=sum(sS);
        
        image(y,x)=round(sum(sS)/8);

    end
end
end


startX=200;
startY=250;

for w=1:50
for i=1:60
    for j=1 : 40
        x=startX+i;
        y=startY+j;

        sS=[image(y-1,x-1),image(y-1,x),image(y-1,x+1),image(y,x+1),image(y+1,x+1),image(y+1,x),image(y+1,x-1),image(y,x-1)];
        sumx=sum(sS);
        
        image(y,x)=round(sum(sS)/8);

    end
end
end

imshow(image);