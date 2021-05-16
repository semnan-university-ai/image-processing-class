clear all
clc
clear;
pic1 = imread('benchmark\watch.png');        
pic1=imresize(pic1,[383 510]);    
 
temp=pic1(:, :,1);                    
pic2= imread('benchmark\pool.png');        

red=pic2(:, :,1);                  
pic1(:,:,1)=pic2(:,:,1);        
pic2(:, :,1)=temp;
subplot(1,2,1);imshow(pic1);title('watch');
subplot(1,2,2);imshow(pic2);title(' pool');