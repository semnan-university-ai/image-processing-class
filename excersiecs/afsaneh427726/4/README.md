> # Exercise 4
>
یک ماتریس500*500  با درایه های 1 ایجاد می کنیم
به ترتیب تصاویررا خوانده و ماتریس 100*100 گوشه پایین سمت راست آن را در درایه های ماتریس  جایگزین می کنیم.
***
>CODE

Main Program
```ruby
w=ones(500,500,3);
w=uint8(w);
w1=imread('C:\Program Files\MATLAB\airplane.png');

w(401:500,401:500,1:3)=w1(413:512,413:512,1:3);

w1=imread('C:\Program Files\MATLAB\baboon.png');

w(301:400,401:500,1:3)=w1(413:512,413:512,1:3);

w1=imread('C:\Program Files\MATLAB\barbara.png');
w(201:300,401:500)=w1(413:512,413:512);
w1=imread('C:\Program Files\MATLAB\boat.png');
w(101:200,401:500)=w1(413:512,413:512);
w5=imread('C:\Program Files\MATLAB\cat.png');
w(1:100,401:500,1:3)=w5(391:490,391:490,1:3);
w6=imread('C:\Program Files\MATLAB\fruits.png');
w(1:100,301:400,1:3)=w6(413:512,413:512,1:3);
w7=imread('C:\Program Files\MATLAB\girl.png');
```
***
![image](https://github.com/semnan-university-ai/image-processing-class/blob/08ef1711f0eab56bf8be8857a27ffcf699e017f3/excersiecs/alirezachaji/4/Exce04.png)




یک ماتریس500*500  با درایه های 1 ایجاد می کنیم



به ترتیب تصاویررا خوانده و ماتریس 100*100 گوشه پایین سمت راست آن را در درایه های ماتریس  جایگزین می کنیم.



