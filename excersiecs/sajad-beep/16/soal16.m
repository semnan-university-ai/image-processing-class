clear;
X = imread('C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\zelda.png');
X=im2gray(X);
imshow(X);
m=50;n=100;
im_size=size(X);
for i=10:im_size(1,1)-10
    for j=10:im_size(1,2)-10
%         if (X(i,j)>160 && i>round(im_size(1,1)*0.5) && i<round(im_size(1,1)*0.55)&& j>round(im_size(1,1)*0.3) && j<round(im_size(1,1)*0.7))
%             
%             X(i,j)=255;
%             if (X(i,j-20)<X(i,j))
%                 
%            
%            
%         end
if (X(i,j)>130)
    X(i,j)=255;
    
end
        
    end
end
%     for i=10:im_size(1,1)-10
%     for j=10:im_size(1,2)-10
%       if (X(i-1,j)<m && X(i,j)>n)
%              k=i;l=j;
%              while( X(k,l)>n)
%               X(k,l)=255;
%              k=k+1;
%              end
%     end
%     end
%     end
    
%        % if(i>round(im_size(1,1)*0.2) && i<round(im_size(1,1)*0.8) )
%         if (X(i-1,j)<m && X(i,j)>n)
%             k=i;l=j;
%             while( X(k,l)>n)
%              X(k,l)=255;
%             k=k+1;
%             end
%         elseif (X(i-1,j-1)<m && X(i,j)>n)
%             k=i;l=j;
%             while( X(k,l)>n)
%              X(k,l)=255;
%             k=k+1;
%             end
%         elseif (X(i,j-1)<m && X(i,j)>n)
%            k=i;l=j;
%             while( X(k,l)>n)
%              X(k,l)=255;
%             k=k+1;
%             end
%         elseif (X(i,j+1)<m && X(i,j)>n)
%            k=i;l=j;
%             while( X(k,l)>n)
%              X(k,l)=255;
%             k=k+1;
%             end
%         elseif(X(i+1,j+1)<m && X(i,j)>n)
%             k=i;l=j;
%             while( X(k,l)>n)
%              X(k,l)=255;
%             k=k+1;
%             end
%         elseif(X(i,j+1)<m && X(i,j)>n)
%            k=i;l=j;
%             while( X(k,l)>n)
%             X(k,l)=255;
%             k=k+1;
%             end
%         end
%        % end
figure(1),
imshow(X);