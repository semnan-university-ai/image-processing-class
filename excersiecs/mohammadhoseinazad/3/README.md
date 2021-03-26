
### question Info :

###### 3. برنامه ای بنویسید که بدون استفاده از توابع متلب تصاویر benchmark را به حالت خاکستری ببرد.

open the code ex3.m with mathlab press **run** button :rocket: 

<div dir = "rtl">
عکس را وارد کرده  آن را در سایز ریخته و دو پلات برای رسم تصویر ایجاد می کند
</div>

```
input=imread('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\lena.png');
subplot(2,2,1), imshow(input), title('RGB Scale image');
subplot(1,2,2), imshow(output), title('Gray Scale  image')
[x,y,~] = size(input);
```

<div dir = "rtl">
آن را طبق عدد قبل از اینپوت درصد روشنایی می دهد (در اینجا 90 است)
</div>

```
for i = 1:1:x
   for j = 1:1:y
      output(i,j) = 0.90*input(i,j);
   end
end
```


<div dir = "rtl">
با تشکر از

@ nastaranm57 

</div>

contributed from (https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/nastaranm57/1/%D8%B4%D9%85%D8%A7%D8%B1%D9%87%203/tamrin3.m)

![img](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/mohammadhoseinazad/3/ex3.png)
