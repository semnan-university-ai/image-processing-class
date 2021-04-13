> # Exercise 6
> این سوال را به دو روش انجام داده ام

روش1:یک طیف خاکستری از 0-255 که راه ها به سختی قابل مشاهده است وهردو سطر یک مقدار را میگیرند(rah.m)(6.2.jpg)
***
>CODE

```ruby
w=zeros(512);

j=1
for i=0:255
    w(j,:)=i;
    j=j+1;
    w(j,:)=i;
    j=j+1;
end
w=uint8(w);
imshow(w)
```

***
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/1f0ddad82bcb7784f43b0e724afda66e05c0bb43/excersiecs/alirezachaji/6/Exce06.png)



> 
25روش2:دراین اینجا راه ها کاملا قابل مشاهده هستندولی از32تا از رنگ های خاکستری استفاده شده است وهر8 سطر یک مقدار را میگیرند
(rah.m)(6.1.jpg)
***
>CODE


```ruby
w=zeros(256);
j=1
m=0


for i=0:32
    w(j:j+7,:)=m;
    j=j+8;
    m=m+8;
    
end
w=uint8(w);
imshow(w)
```




