clc
clear data;
clear all;
image=zeros(500,500);
% temp=zeros(500,500);
%morabe******************
image(100:200,200:300)=1;
%mostatil******************
image(250:300,200:400)=1;
%********************
%MOSALAS*******************
for i=350:1:450
     
    for j=350:i
        image(i,j)=155;
    end
      
end
%****************************
%lozi*************
 for i=1:50
     for j=1:2*100+1
         if (j>=50-i+2 && j<=50+i)
            image(i,j)=255;
         end
     end
 end
 
for i=1:50
    for j=1:100
        if image(i,j)==255
            t=50-i;
            s=50+t;
            image(s,j)=255;
            
        end
       
    end
end

%--------------
imshow(image);

