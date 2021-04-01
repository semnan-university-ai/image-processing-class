clc;
clear;
close all;

pic=imread('girl.png');
if size(size(pic),2)==3
    pic = (rgb2gray(pic));
end
picSize=size(pic);

r180Pic=zeros(picSize(1),picSize(2),'uint8');
for x=1: picSize(2)
    for y=1 : picSize(1)
        r180Pic(picSize(1)-y+1,x)=pic(y,x);
    end
end

r90Pic=zeros(picSize(2),picSize(1),'uint8');
for x=1: picSize(2)
    for y=1 : picSize(1)
        r90Pic(picSize(2)+1-x,y)=pic(y,x);
    end
end
  

x3=double(pic);
centerX=round(picSize(2)/2);
centerY=round(picSize(1)/2);

ro45Pic=zeros(picSize(1),picSize(2),'uint8');
deg=45;
sin=sind(deg);
cos=cosd(deg);

for y=1:picSize(1)
    for x=1:picSize(2)
        pointY(y,x)=round((y-centerY).*cos+(x-centerX).*sin+centerY);
        pointX(y,x)=round(-(y-centerY).*sin+(x-centerX).*cos+centerX);
            if(pointY(y,x)<=picSize(1))&&(pointY(y,x)>0)&&(pointX(y,x)<=picSize(2))&&(pointX(y,x)>0)
              ro45Pic(y,x)=x3(pointY(y,x),pointX(y,x));
            end
    end
end

ro120Pic=zeros(picSize(1),picSize(2),'uint8');
deg=120;
sin=sind(deg);
cos=cosd(deg);

for y=1:picSize(1)
    for x=1:picSize(2)
        pointY(y,x)=round((y-centerY).*cos+(x-centerX).*sin+centerY);
        pointX(y,x)=round(-(y-centerY).*sin+(x-centerX).*cos+centerX);
            if(pointY(y,x)<=picSize(1))&&(pointY(y,x)>0)&&(pointX(y,x)<=picSize(2))&&(pointX(y,x)>0)
              ro120Pic(y,x)=x3(pointY(y,x),pointX(y,x));
            end
    end

end

subplot(3,2,1);imshow(pic);
subplot(3,2,2);imshow(r180Pic);
subplot(3,2,3);imshow(r90Pic);
subplot(3,2,4);imshow(ro45Pic);
subplot(3,2,5);imshow(ro120Pic);