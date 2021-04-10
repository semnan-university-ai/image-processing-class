clear;
X=imread('C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\watch.png');
X=im2gray(X);
figure(1),
imshow(X);
im_size=size(X);
for i=1:im_size(1,1)-1
   for j=1:im_size(1,2)-1  
       if(X(i,j)>90 && X(i,j)<100)
           X(i,j)=255;
           k=i;l=j;
           if( X(k,l)>90  && k < im_size(1,1)&& l < im_size(1,2)  )
                X(k,l)=255;
                if( X(k,l+1)<90)
                   X(k,l)=255;
                end
                if(X(k,l+1)>90)
                       v=l;
                       c=l;
                       while(X(k,v+1)>90)
                           l=l+1;
                       if((l-c)<30)
                           X(k,v)=255;
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
    

figure(2),
imshow(X);

