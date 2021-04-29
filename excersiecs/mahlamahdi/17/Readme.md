<div dir= "rtl">
  <h1> تمرین هفدهم </h1>
  </div>
  
````    
clc;
clear;
close all;

````

<div dir= "rtl">
  خواندن تصویر و با توجه به مکان  آسمان در تصویر اگر مقدار پیسکل از 200 کمتر بود آن را سیاه نماید.
  </div>

````
for i=1:80
    for j=1:639
        if (a(i,j))>200
            a(i,j)=0;
        end
        
    end
end
for i=80:150
    for j=1:290
        if (a(i,j))>200
            a(i,j)=0;
        end
        
    end
end
for i=80:150
    for j=600:639
        if (a(i,j))>200
            a(i,j)=0;
        end
        
    end
end

`````

<div dir= "rtl">
  نمایش خروجی
  </div>
  
  `````
subplot(1,2,1),imshow("mountain.png");
subplot(1,2,2),imshow(a);
 
`````

![خروجی](assets/result.jpg)

