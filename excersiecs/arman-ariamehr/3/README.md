<div dir = "ltr">
    
```
projectdir = 'benchmark\';
dinfo = dir(fullfile(projectdir));
dinfo([dinfo.isdir]) = [];     %get rid of all directories including . and ..
nfiles = length(dinfo);
folder = 'output\';
for j = 1 : nfiles
    filename = fullfile(projectdir, dinfo(j).name);
    address = fullfile(folder , dinfo(j).name);
    rgb = imread(filename);
    size(rgb);
    if size(size(rgb) , 2) == 3
        r = rgb( : , : , 1);
        g = rgb( : , : , 2);
        b = rgb( : , : , 3);
        gray = (0.3 * r) + (0.59 * g) + (0.11 * b);
        imwrite(gray , address);
    else
        imwrite(rgb , address);
    end
end
```
</div>

<div dir = "rtl">
ابتدا آدرس را مشخص کرده سپس تمام فایل های موجود در پوشه بنچ مارک را شنباسایی کرده.
 به کمک حلقه اگر تصویر رنگی باشد از هر رنگ کسری را برداشته و با یک دیگر جمع می شوند
 در نهایت هم در پوشه خروجی ذخیره می گردند
 
 تصویر هواپیما :
 
 ![airplane](https://user-images.githubusercontent.com/80279784/113253536-a09b7300-92da-11eb-882b-43efb703aed7.png)


تصویر هواپیما بعد از تغییر :

![airplane](https://user-images.githubusercontent.com/80279784/113253637-bdd04180-92da-11eb-95d2-56c5274a24c9.png)


تنها ایراد برنامه تصاویری با پسوند .bmp می باشد

</div>
