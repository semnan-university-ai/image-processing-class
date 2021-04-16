
> # Exercise 19
***


>CODE
 <div dir="rtl">
فایل عکس های حروف رامیخوانیم و سایز آن را 200*200می کنیم
 </div>


```ruby
a=imread('C:\Users\as\Desktop\?????? ???? ???????\a.png');
a=im2bw(a,0.001);
a=imresize(a,[200,200])
.
.
.

```
 <div dir="rtl">
دریک حلقه 4 بار یکعدد رندوم از 1تا 26 انتخاب می شود که هر عدد مربوط به یک حرف می باشد سپس تصویر را در یک ماتریس کپی می کنیم
 </div>
     
```ruby
mm=0

for i=1:4
    aa=randi(26)
    if (aa==1)
        xx(1:200,((100*mm)+1):(100*(mm+2)))=a;     
    end
  .
  .
  .
    mm=mm+2;
    
end

```
 <div dir="rtl">
در انتها  یک ماتریس200*800 را چاپ می کنیم
 </div>
     
```ruby
uint8(xx);
figure;
imshow(xx);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/afsaneh427726/19/kap19.jpg)
***


