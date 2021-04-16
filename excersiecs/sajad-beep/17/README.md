~~~
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
~~~
1
2
3
	
![camelCase](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/sajad-beep/17/%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AA%D9%85%D8%B1%DB%8C%D9%86%2017.PNG)
