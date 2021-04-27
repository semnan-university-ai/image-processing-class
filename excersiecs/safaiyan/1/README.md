
#### tamrin 1 code:


```
s1= input('row= ');
s2= input('column= ');

m=1
 
for i=1:s1
    
    for j=1:s2
        
        if isequal(m,0)
            rectangle('Position',[j i 1 1], 'FaceColor',[1 1 1])
            m=1;
        else
            rectangle('Position',[j i 1 1], 'FaceColor',[0 0 0])
            m=0;
        end
        
    end
    
     if isequal(m,0)
            m=1;
     else
            m=0;
     end
     
end
```
<div dir="rtl">

-دو خط اول مقدار سطر و ستون را از ورودی می گیرد

-m را برای تعیین رنگ خانه ها ابتدا 1 قرار میدهیم

-با استفاده از حلقه for به تعداد سطر و ستون ها خانه های مربعی سفید و سیاه ایجاد میکنیم

-مقدار m  را تغییر میدهیم

-برای جلوگیری از یک رنگ شدن ستون ها شرط میگذاریم

-در صورت زوج بودن ستون ها مقدار m را عوض میکنیم

</div>

![khorooji](result.jpg)
