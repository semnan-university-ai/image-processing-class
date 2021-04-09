 clc
 close all
 clear all

 image = imread("../benchmark/mountain.png");	

		for j=1:640 
		    for i=1:150
		     if 150<image(i,j)
		         image(i,j)=0;
		     end
		     if image(i+1,j)<150
		         break;
		     end
		    end
		end
		
		figure;
 		imshow(image) ;
  

