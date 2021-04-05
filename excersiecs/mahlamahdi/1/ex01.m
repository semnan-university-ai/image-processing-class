clc
clear
close all
%% دریافت تعداد سطر و ستون صفحه شطرنجی
row = input('Number of Row: ');
colum = input('Number Of Column:');
for i=1:row
        for j=1:colum
        %% اگر مجموع i,j بر 2 بخش پذیر باشد پیکسل صفر و در غیر این صورت پیکسل مقدار یکرا دریافت می کند.
            if mod((i+j),2)==0
                image(i,j)=0;
            else  
                 image(i,j)=1;
            end
        end
end
imshow(image);
