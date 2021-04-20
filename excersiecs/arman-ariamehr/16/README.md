<div dir = "ltr">
    
```
address = 'benchmark\zelda.png';
input_im = imread(address);
image = input_im;
copy_im = image;
row = size(image , 1);
col = size(image , 2);

[center , radius] = imfindcircles(image , [8 12] , 'ObjectPolarity' , 'dark' , 'sensitivity' , 0.95);

middle = ceil( row / 2 );
limit = 15;
low = middle - limit ;
hight = middle + limit;

data = round([fliplr(center) radius]);

amount = size(center , 1);
for k = 1 : amount
    i_cen = data(k , 1);
    j_cen = data(k , 2);
    rad = 2 * data(k , 3);
    if i_cen >= low && i_cen <= hight
        %draw black circle
        for th = 0 : 0.1 : 360
            for r = 0 : rad
                i = r * cos(th) + i_cen;
                j = r * sin(th) + j_cen;
                copy_im(floor(i) , floor(j)) = 0;
                copy_im(floor(i) , ceil(j)) = 0;
                copy_im(ceil(i) , floor(j)) = 0;
                copy_im(ceil(i) , ceil(j)) = 0;
            end
        end
    end
end

imshow(copy_im)
```
</div>


<div dir = "rtl">
  پس از خواندن تصویر دایره هایی به شعاع 8 تا 12 پیکسل پیدا می شوند
  
  شعاع و دقت مانند تمرین قبلی انتخاب شده اند
  
  سپس مراکزی که سطر هایشان تقریبا در وسط تصویر است با کشیدن دایره ای سیاه رنگ با شعاع 2 برابر حذف می گردند
  
  تصویر ورودی :
  
  ![zelda](https://user-images.githubusercontent.com/80279784/113547351-f5a0f700-9602-11eb-9fad-e0cf0aabbdbd.png)

  تصویر خروجی :
  
  ![image](https://user-images.githubusercontent.com/80279784/113547380-05b8d680-9603-11eb-8635-9dd0c797d14b.png)

</div>
