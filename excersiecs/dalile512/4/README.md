<div dir="rtl">

تمرین چهارم.<br/>
</div>



```

imgpath ="../../../benchmark/";
img = ones(500, 500, 3,'uint8');
pngfiles =dir(imgpath+'*.png');
tiffiles =dir(char(imgpath+'*.tif'));
bmpfiles = dir(imgpath+"*.bmp");
imagefiles = [pngfiles;tiffiles;bmpfiles];
for ii=1:25
   currentimg = imread(imgpath+imagefiles(ii).name);
   [sx,sy,sz]=size(currentimg);
   imgcut=currentimg(sx-100:sx,sy-100:sy,:);
   if sz==1
       imgcut=cat(3,imgcut,imgcut,imgcut);
   end
   mo=mod(ii-1,5)*100;di=fix((ii-1)/5)*100;
   img(di+1:di+101,mo+1:mo+101,:)=imgcut(1:101,1:101,:);
end
imshow(img);


```
