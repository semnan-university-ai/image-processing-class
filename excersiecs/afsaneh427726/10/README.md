
> # Exercise 10
>

>CODE


```ruby
 
تک تک  فایل تصویری اعداد را خوانده و سایز آن را 200*200 می کنیم

k=imread('C:\Users\as\Desktop\1.png');
k=im2bw(k,0.001);
k=imresize(k,[200,200]);
% imshow(m)
b=imread('C:\Users\as\Desktop\2.png');
b=im2bw(b,0.001);
b=imresize(b,[200,200]);
c=imread('C:\Users\as\Desktop\3.png');
c=im2bw(c,0.001);
c=imresize(c,[200,200]);
d=imread('C:\Users\as\Desktop\4.png');
d=im2bw(d,0.001);
d=imresize(d,[200,200]);
e=imread('C:\Users\as\Desktop\5.jpg');
e=im2bw(e,0.001);
e=imresize(e,[200,200]);
f=imread('C:\Users\as\Desktop\6.png');
f=im2bw(f,0.001);
f=imresize(f,[200,200]);
g=imread('C:\Users\as\Desktop\7.png');
g=im2bw(g,0.001);
g=imresize(g,[200,200]);
h=imread('C:\Users\as\Desktop\8.png');
h=im2bw(h,0.001);
h=imresize(h,[200,200]);
t=imread('C:\Users\as\Desktop\9.png');
t=im2bw(t,0.001);
t=imresize(t,[200,200]);
m=0

بااستفاده از یک حلقه  4 عدد به صورت رندوم انتخاب می شود و در یک ماتریس ذخیره شده مه اندازه آن در انتها800*200 می باشد 


for i=1:4
    a=randi(9)
    if (a==1)
        x(1:200,((100*m)+1):(100*(m+2)))=k;
    end
    if (a==2)
        x(1:200,((100*m)+1):(100*(m+2)))=b;
    end
    if (a==3)
        x(1:200,((100*m)+1):(100*(m+2)))=c;
    end
    if (a==4)
        x(1:200,((100*m)+1):(100*(m+2)))=d;
    end
    if (a==5)
       x(1:200,((100*m)+1):(100*(m+2)))=e;
    end
    if (a==6)
        x(1:200,((100*m)+1):(100*(m+2)))=f;
    end
    if (a==7)
        x(1:200,((100*m)+1):(100*(m+2)))=g;
    end
    if (a==8)
       x(1:200,((100*m)+1):(100*(m+2)))=h;
    end
    if (a==9)
       x(1:200,((100*m)+1):(100*(m+2)))=t;
    end
    m=m+2;
    
end
uint8(x);
figure;
imshow(x);
```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/f252686eab76eab3b8a80fa18ed263105af2742a/excersiecs/alirezachaji/10/Exce10.png)
***


