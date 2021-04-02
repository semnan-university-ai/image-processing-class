		close all
		clear all
		clc
		pic = imread('c:\SemnanClass\9902\TA\benchmark\zelda.png');
		imshow(pic);
		EyeDetect = vision.CascadeObjectDetector('LeftEyeCART');
		BB=step(EyeDetect,pic);
		BB(1,4)=30;
		BB(1,2)=BB(1,2)+20;
		for i=BB(1,2):BB(1,2)+BB(1,4)+5
		    for j=BB(1,1):BB(1,1)+BB(1,3)
		        pic(i,j)=pic(i+35,j);
		    end
		end    
		EyeDetect = vision.CascadeObjectDetector('RightEyeCART');
		BB=step(EyeDetect,pic);
		BB(1,4)=30;
		BB(1,2)=BB(1,2)+22;
		for i=BB(1,2):BB(1,2)+BB(1,4)+15
		    for j=BB(1,1)-10:BB(1,1)+BB(1,3)-5
		        pic(i,j)=pic(i+40,j-5);
		    end
		end    
		figure,
		imshow(pic);  

