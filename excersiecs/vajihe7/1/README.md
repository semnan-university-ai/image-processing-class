close all
clear
clc
axis([1 13  1 13]);%تعیین محدوده محور مختصات در شکل 
x=1
for i=3:1:10 % دو حلقه ی تو در تو برای رسم یک صفحه8در8ایجاد می کنیم
    for j=3:1:10
        if isequal(x,0)% (اگر برابر0 بود سفید و اگر برابر1 بود سیاه شود)تابع چک کردن مساوی بودن دوماتریس
            rectangle('position',[j i 1 1],'facecolor',[.800  .800  .800])% رسم مستطیل دو بعدی 
            x=1;
        else
            rectangle('position',[j i 1 1],'facecolor',[0 0 0])
            x=0;
        end
    end
    if isequal(x,0)
        x=1;
    else 
        x=0;
    end
end
