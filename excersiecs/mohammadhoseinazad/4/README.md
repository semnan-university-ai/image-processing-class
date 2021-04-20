
### question Info :

###### 

<div dir = "rtl">
باز کردن عکس ها
</div>

```matlab
img_path = 'C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\*.png';
images = dir('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\*.png');
filename = {};
new={};
```

<div dir = "rtl">
یکی یکی عکس ها راخوانده و میبرد و در درون صفحه 500*500 قرار میدهد
</div>

```matlab
  %filename{i} = images(i).name; 
  %imagecr=imread(filename{i});
  filename(i).data = imread( fullfile(img_path, images(i).name));
  croppedImage = imcrop(imagecr, [80, 80, 500, 500]);
  croppedImage{i}=croppedImage;
end
 for i=1:20
    image=[croppedImage{i}];
    new{i}=image;
 end
```

<div dir = "rtl">
عکس ها را ادغام کرده و در آخر عکس ادغام شده را نشان می دهد
</div>

```
merrged=cat(new{1},new{2},new{3},new{4},new{5});
imshow(merrged)
```

