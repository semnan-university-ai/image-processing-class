
> # Exercise 13
> On a negative image, try the salt pepper noise with different numbers and average all its pixels in an output table. 
***
>CODE

Main Program
```ruby
 
close all          % تمام پنجره ها را می بندد
clear all          % سيستم مموري و مقادير تمام متغير ها را پاك ميكند
clc                % كامند ويندو را پاك مي كند
t=zeros(10,6);
for i=1:10
    d=randi([10000,100000]);
    figure;
    A=func_13("benchmark\lena.png",d);
    t(i,1)=i;
    t(i,2)=d;
    t(i,3:5)=A;
    t(i,6)=round((A(1)+A(2)+A(3))/3);
end 
T = array2table(t,'VariableNames', {'Item','Noise_size','Red_ave','Green_ave','Blue_ave','All_ave'})
f=figure;
h={'Item','Noise_size','Red_ave','Green_ave','Blue_ave','All_ave'};

f=figure;
t=uitable(f,'data',t,'columnname',h);
```
Function
```ruby
function ave=func_13(add,ps)
pic=imread(add);
subplot(1,3,1);imshow(pic);
pic(:,:,:)=255-pic(:,:,:);
subplot(1,3,2);imshow(pic);
n=size(pic);
ave=zeros(1,3);
for i=1:ps
    x=randi(n(1));
    y=randi(n(2));
    z=round(mod(randi(10),2));
    pic(x,y,:)=z*255;
end
s=0;
for i=1:n(1)
    for j=1:n(2)
        for k=1:3
            ave(k)=ave(k)+double(pic(i,j,k));
        end
    end
end  
ave=round(ave/(n(1)*n(2)));
subplot(1,3,3);imshow(pic)   
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/5649db8aae407cfd267632b0a079cb165655db73/excersiecs/alirezachaji/13/Exce13.png)
***
<div dir="rtl">
توضیحات کلی برنامه <br />
 . 
</div>
