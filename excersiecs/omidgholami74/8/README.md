> # Exercise 4
>بدون استفاده از توابع آماده ی متلب یک تصویر را با 45،90،120،180 درجه بچرخانید؛ در تصاویری که چرخش تصویر باعث خارج شدن از حالت مربعی می شود پیکسل های خالی را برابر رنگ مشکی قرار دهید و پیکسل های خارج شده از محدوده را نادیده بگیرید.
***
>CODE

Main Program
```ruby
clc;
close all;
clear all;


deg=[45 90 120 180];
sizeDeg=size(deg);
for i=1:sizeDeg(2)
    figure;
    imshow(e8_rotate('benchmark/airplane.png',deg(i)));
end

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
![image](https://user-images.githubusercontent.com/48456571/113296901-4668d500-930f-11eb-8221-55f1ee6436d6.png)


<div dir="rtl">
<h2>توضیحات برنامه</h2> <br />
 <b>1</b>.درابندا برنامه عکس را بارگذاری میکند<br />
<b>2</b>.عکس و سایز  را به تابع چرخش عکس میدهد <br />
</div>
