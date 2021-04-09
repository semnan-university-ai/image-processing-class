clear;
X = imread('C:\Users\SajadEd\Documents\GitHub\image-processing-class\benchmark\mountain.png');
X=im2gray(X);
imshow(X);
im_size=size(X);
for j=1:im_size(1,2)-1 
    for i=1:im_size(1,1)-1
    
        
       if(X(i,j)>(X(i+1,j)*1.1))
        
          break; 
       end
        X(i,j)=0;
        
    end
    
end

figure(1),
imshow(X);