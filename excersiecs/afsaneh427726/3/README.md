> # Exercise 3
>ابتدا تصویر را خوانده وکانال های رنگی را خوانده وباهم جمع کرده و تقسیم بر 3 میکنیم.
***
>CODE

```ruby
clc;
clear data;
clear all;
w=imread('C:\Program Files\MATLAB\airplane.png');
 imshow(w)
 figure;
 w=0.33*w(:,:,1)+0.33*w(:,:,2)+0.34*w(:,:,3);


 imshow(w)
```
***


