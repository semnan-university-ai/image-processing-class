<div dir="rtl">

#### تمرین 20


### کد:
</div>

```matlab
	clear all
clc
clear;
Z=imread('C:\SemnanClass\9902\TA\Benchmark/Z.png');
A=imread('C:\SemnanClass\9902\TA\Benchmark/A.png');
H=imread('C:\SemnanClass\9902\TA\Benchmark/h.png');
R=imread('C:\SemnanClass\9902\TA\Benchmark/R.png');
A=imread('C:\SemnanClass\9902\TA\Benchmark/A.png');
imageList={ Z A H R A };
for i=1:5
     imageList{i}=imresize( imageList{i},[100,100]);
end
finalImage=cat(2,imageList{1},imageList{2},imageList{3},imageList{4},imageList{5});
 imshow(finalImage)


```
---
<div dir="rtl">

-   یادگیری و آموزش ازهمکلاسی های گرامی در گيت هاب  
   
</div>

<div dir="rtl">
