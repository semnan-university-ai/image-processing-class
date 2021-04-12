
تصویر کوه را گرفته

a=imread('C:\Users\as\Downloads\mountain.png');

تمام ستون های تصویر  تا سطر 200که مربوط به آسمان است راپیمایش کرده و اگر مقدار پیکسل بیشتر از 150بود آن را سیاه می کنیم(مقدار پیکسل های آسمان بیشتر 150 می باشد) 
for j=1:640 %arze tasvir
    for i=1:200
     if 150<a(i,j)
         a(i,j)=0;
     end
     if a(i+1,j)<150
         break;
     end
    end
end

imshow(a)
