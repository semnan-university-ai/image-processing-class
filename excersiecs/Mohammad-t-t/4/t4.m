clc;
clear;
close all;

picList=dir('4\pic\*.png');
endPic=zeros(500,500,'uint8');

w=1;
z=1;
n=1;
tempstack=zeros(100,100,'uint8');



for i=1 : 5
    z=(i*100)-100+1;
    for j=1 : 5
              tempPic=imread(picList(n).name);
              tempPic=uint8(tempPic);
                     tempsize=size(size(tempPic));
                          if (tempsize(2)==3)
                               tempPic=rgb2gray(tempPic);
                          end
              tempPicSize=size(tempPic);
              n=n+1;
        %temp
        for xi=1: 100
            for yi=1 : 100
                tempstack(101-yi,101-xi)=tempPic(tempPicSize(1)-yi,tempPicSize(2)-xi);
            end
        end
        
       %jay gozari 
        w=(j*100)-100+1;
      for x=1 : 100
          for y=1 : 100
              endPic(y+w-1,x+z-1)= tempstack(y,x);
          end
      end
    end
end

imshow(endPic);