# تمرين 24




<div dir="rtl">
 خواندن تصاوير و هم سايز نمودن آنها براي امكان استفاده موثر
</div>




```
imagepool = imread("../../../Benchmark/pool.png");
imagewatch = imread("../../../Benchmark/watch.png");
imagepool=imresize(imagepool,[512,512]);
imagewatch=imresize(imagewatch ,[512,512]);
```


<div dir="rtl">
 جا به جا نمودن كانال هاي قرمز دو تصوير انتخاب شده .
</div>




```
imagePool(:,:,1) = imagewatch(:,:,1) ;
imagePool(:,:,2) = imagepool(:,:,2) ;
imagePool(:,:,3) = imagepool(:,:,3) ;
imageWatch(:,:,1) = imagepool(:,:,1);
imageWatch(:,:,2) = imagewatch(:,:,2);
imageWatch(:,:,3) = imagewatch(:,:,3);
```


<div dir="rtl">
 نمايش تصاوير
</div>



```
figure,imshow(imagePool);
imsave;
figure,imshow(imageWatch);
imsave;
```



![output](t24-Pool.png)
![output](t24-watch.png)
