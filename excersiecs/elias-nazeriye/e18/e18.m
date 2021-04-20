close all;
clear all;
clc;


pic=imread('watch.png');
pic=im2gray(pic);
pic1=pic;
imshow(pic);
ps=size(pic);

for i=1: ps(1,1)-1
   for j=1: ps(1,2)-1  
       if(pic(i,j)>90 && pic(i,j)<100)
           pic(i,j)=255;
           k=i;l=j;
           if(pic(k,l)>90  && k < ps(1,1)&& l < ps(1,2))
                pic(k,l)=255;
                if( pic(k,l+1)<90)
                   pic(k,l)=255;
                end
                if(pic(k,l+1)>90)
                       m=l;
                       n=l;
                       while(pic(k,m+1)>90)
                           l=l+1;
                           if((l-n)<30)
                             pic(k,m)=255;
                           else
                           break;
                           end
                       end
                       k=k+1;
                end
            end
       end
   end            
end
    

subplot(1,2,1), imshow(pic1), title('main pic');
subplot(1,2,2), imshow(pic), title('edited pic');