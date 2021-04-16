<div dir ="rtl">

###  تمرین 8:<br/>

* کد اول  ،هر کدام از زوایای خواسته شده را دوران می دهد. کد دوم هر زوایه ی دلخواهی که به ان بدهیم،شکل را دوران می دهد . <br/>


    
###  توضیح کد دوم:<br/>



*   ابتدا با کد زیر،عکس را می خوانیم.<br/>
</div>



```
 A = imread('saat.png');
```


<div dir ="rtl">

*   تعیین درجه توسط کاربر:<br/>
</div>



```
deg = input(' Please Enter radius: ');
```


<div dir ="rtl">

*   نقطه میانی را پیدا می کنیم<br/>

</div>


```
if(deg > 155)
    midx = ceil((size(A,1))/2);
    midy = ceil((size(A,2))/2);
else
    midx = ceil((size(A,2))/2);
    midy = ceil((size(A,1))/2);
end

[y,x] = meshgrid(1:size(A,2), 1:size(A,1));
[t,r] = cart2pol(x-midx,y-midy);
t1 = radtodeg(t)+deg;
```

<div dir ="rtl">

*   از درجه به رادیان تبدیل کنید.<br/>

</div>


```

t = degtorad(t1);
```

<div dir ="rtl">

*    تبدیل به مختصات دکارتی:<br/>

</div>


```

[x,y] = pol2cart(t,r);

```



<div dir ="rtl">

*    نقاط میانی را به مختصات جدید اضافه می کنیم.<br/>

</div>

```

tempx = round(x+midx);
tempy = round(y+midy);

if ( min(tempx(:)) < 0 )
   
newx = max(tempx(:))+abs(min(tempx(:)))+1;
tempx = tempx+abs(min(tempx(:)))+1;
else
    newx = max(tempx(:));
end

if( min(tempy( : )) < 0 )
   
newy = max(tempy(:))+abs(min(tempy(:)))+1;
tempy = tempy+abs(min(tempy(:)))+1;
else
    newy = max(tempy(:));
end
tempy(tempy==0) = 1;
tempx(tempx==0) = 1;

C = uint8(zeros([newx newy]));


for i = 1:size(A,1)
    for j = 1:size(A,2)
        C(tempx(i,j),tempy(i,j)) = A(i,j);
       
    end
  
end

figure,imshow(C);

Output = C;

%FILL THE HOLES OR GAPS-NEAREST NEIGHBOR
for i = 2:size(C,1)-1
    for j = 2:size(C,2)-1
       
        temp = C(i-1:i+1,j-1:j+1);
        if(temp(5)==0&&sum(temp(:))~=0)
            pt = find(temp~=0);
           
            [~,pos] = sort(abs(pt-5));
            Output(i,j) = temp(pt(pos(1)));
          
        end
       
    end
end
```

<div dir ="rtl">

*  نمایش خروجی:<br/>

</div>

```


figure,imshow(uint8(Output));

```




<div dir ="rtl">

* تصویر اصلی:<br/>

</div>



out=![out](saat.png)



<div dir ="rtl">

*   90 درجه:<br/>

</div>

90 darage.JPG=![out](90darage.JPG)



<div dir ="rtl">

*   120 درجه:<br/>

</div>

120 darage.JPG=![out](120darage.png )




<div dir ="rtl">

*   180درجه:<br/>

</div>

180 darage.JPG=![out](180darage.JPG )







