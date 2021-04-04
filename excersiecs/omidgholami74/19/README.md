
> # Exercise 19
>با کمک روشی که در تمرین شماره ی 10 انجام داده اید این بار به جای اعداد از کلمات انگلیسی استفاده کنید و کپچا بسازید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;



imageList =dir('alpha_eng/*.png');
blankImage=[];
n=input("please insert Number of Characters")
for k =1:n
    rand=randi(24);
    deg=randi(180);
    temp=zeros(100,100);
        name =imageList(rand).name;
       image=imread(name);
       image=rgb2gray(image);
       
       image=e8_rotate(image,deg);
       [w,h]=size(image);
       temp(1:w,1:h) = image;
       blankImage =cat(2,blankImage,temp);
end
imshow(blankImage);
```
****
rotate function
```ruby
function image_rotated = e8_rotate(A,deg)
%E8_FUN Summary of this function goes here
%   Detailed explanation goes here
%Find the midpoint
% path=strcat(name)
if(deg > 155)
    midx = ceil((size(A,1))/2);
    midy = ceil((size(A,2))/2);
else
    midx = ceil((size(A,2))/2);
    midy = ceil((size(A,1))/2);
end

[y,x] = meshgrid(1:size(A,2), 1:size(A,1));
[t,r] = cart2pol(x-midx,y-midy);
t1 = radtodeg(t)+deg;

%Convert from degree to radians
t = degtorad(t1);

%Convert to Cartesian Co-ordinates
[x,y] = pol2cart(t,r);

%Add the mid points to the new co-ordinates
tempx = round(x+midx);
tempy = round(y+midy);

if ( min(tempx(:)) < 0 )
   
newx = max(tempx(:))+abs(min(tempx(:)))+1;
tempx = tempx+abs(min(tempx(:)))+1;
else
    newx = max(tempx(:));
end

if( min(tempy( : )) < 0 )
   
newy = max(tempy(:))+abs(min(tempy(:)))+1;
tempy = tempy+abs(min(tempy(:)))+1;
else
    newy = max(tempy(:));
end
tempy(tempy==0) = 1;
tempx(tempx==0) = 1;

C = uint8(zeros([newx newy]));


for i = 1:size(A,1)
    for j = 1:size(A,2)
        C(tempx(i,j),tempy(i,j)) = A(i,j);
       
    end
  
end
Output = C;
%FILL THE HOLES OR GAPS-NEAREST NEIGHBOR
for i = 2:size(C,1)-1
    for j = 2:size(C,2)-1
       
        temp = C(i-1:i+1,j-1:j+1);
        if(temp(5)==0&&sum(temp(:))~=0)
            pt = find(temp~=0);
           
            [~,pos] = sort(abs(pt-5));
            Output(i,j) = temp(pt(pos(1)));
          
        end
       
    end
end
image_rotated=uint8(Output);
end
```
***
![image](https://user-images.githubusercontent.com/48456571/113310193-37891f00-931d-11eb-939f-2b530b5bd3d0.png)

<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع بریدن عکس میدهد <br />
<b>3</b>. عکس را با استفاده از آراایه ها در ابعاد مشخص شده می دهیم.<br />
<b>4</b>. با استفاده از حلقه ها اکثر را در آرایه ها میگذاریم
    
</div>
