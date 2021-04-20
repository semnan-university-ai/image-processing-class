> # Exercise 20

***
>CODE

```ruby
clear all
clc
clear;
A=imread('Carachter/A.png');
E=imread('Carachter/E.png');
F=imread('Carachter/F.png');
H=imread('Carachter/H.png');
Z=imread('Carachter/Z.png');
imageList={ F A E Z E H };
for i=1:6
     imageList{i}=imresize( imageList{i},[100,100]);
end
finalImage=cat(2,imageList{1},imageList{2},imageList{3},imageList{4},imageList{5},imageList{6});
 imshow(finalImage)



```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/20/Screenshot%20(19).png)
***

