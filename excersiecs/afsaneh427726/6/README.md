> # Exercise 6
> 

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
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/6/soal6.2.jpg)



> 
روش2:دراین اینجا راه ها کاملا قابل مشاهده هستندولی از32تا از رنگ های خاکستری استفاده شده است وهر8 سطر یک مقدار را میگیرند
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

![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/6/soal6.1.jpg)


