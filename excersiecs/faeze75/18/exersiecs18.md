> # Exercise 19



***
>CODE

```ruby
clc
clear
close all
img =imread('watch.png');
figure;imshow(img);
R = img(:,:,1); 
G = img(:,:,2); 
B = img(:,:,3);
for i=368:487
    for j=327:697
            if ~(R(i,j)>G(i,j) && G(i,j)>B(i,j)&& R(i,j+4)>G(i,j+4) && G(i,j+4)>B(i,j+4))
                img(i,j,1)=255;
                img(i,j,2)=255;
                img(i,j,3)=255;
            end

    end
end

for i=295:370
    for j=411:612
            if ~(R(i,j)>G(i,j) && G(i,j)>B(i,j)&& R(i,j+4)>G(i,j+4) && G(i,j+4)>B(i,j+4))
                img(i,j,1)=255;
                img(i,j,2)=255;
                img(i,j,3)=255;
            end

    end
end
for i=326:370
    for j=355:416
            if ~(R(i,j)>G(i,j) && G(i,j)>B(i,j)&& R(i,j+4)>G(i,j+4) && G(i,j+4)>B(i,j+4))
                img(i,j,1)=255;
                img(i,j,2)=255;
                img(i,j,3)=255;
            end

    end
end

for i=324:370
    for j=612:670
            if ~(R(i,j)>G(i,j) && G(i,j)>B(i,j)&& R(i,j+4)>G(i,j+4) && G(i,j+4)>B(i,j+4))
                img(i,j,1)=255;
                img(i,j,2)=255;
                img(i,j,3)=255;
            end

    end
end
for i=487:500
    for j=341:681
            if ~(R(i,j)>G(i,j) && G(i,j)>B(i,j)&& R(i,j+4)>G(i,j+4) && G(i,j+4)>B(i,j+4))
                img(i,j,1)=255;
                img(i,j,2)=255;
                img(i,j,3)=255;
            end

    end
end

for i=500:576
    for j=349:672
            if ~(R(i,j)>G(i,j) && G(i,j)>B(i,j) && R(i,j+2)>G(i,j+2) && G(i,j+2)>B(i,j+2))
                img(i,j,1)=255;
                img(i,j,2)=255;
                img(i,j,3)=255;
            end

    end
end
figure;imshow(img);
```


![alt text]()
***
<div dir="rtl">
توضیحات برنامه <br />
برنامه فضا داخل ساعت را به چند گریدمستطیل شکل تقسیم میکند  و به آن ها رنگ سفید اختصاص میدهد
</div>


