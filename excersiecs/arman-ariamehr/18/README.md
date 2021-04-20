<div dir = "ltr">
    
```
address = 'benchmark\watch.png';
input_im = imread(address);
image = rgb2gray(input_im);
copy_im = image;

%185 190 99?
[center , radius] = imfindcircles(image , [185 190] , 'ObjectPolarity' , 'bright' , ... ,
    'Sensitivity' , 0.99);

data = round( [fliplr(center) radius] );

amount = size(data , 1);
for k = 1 : amount
    i_cen = data(k , 1);
    j_cen = data(k , 2) + 40;
    rad = data(k , 3) - 20;
    
    for th = 0 : 0.1 : 360
        for r = 0 : rad
            i = r * cos(th) + i_cen;
            j = r * sin(th) + j_cen;
            copy_im(floor(i) , floor(j)) = 255;
            copy_im(floor(i) , ceil(j)) = 255;
            copy_im(ceil(i) , floor(j)) = 255;
            copy_im(ceil(i) , ceil(j)) = 255;
        end
    end
end
    
imshow(copy_im);
```
</div>


<div dir = "rtl">
  ابتدا تصویر خوانده می شود
  در قدم بعدی تمام دایره ها به شعاع 185 تا 190 پیدا می شوند
  
  شعاع و دقت مانند تمرین 15 پیدا شده است
  
  سپس در مختصات مرکز هر دایره و با شعاع آن دایره یک دایره سفید رنگ رسم می گردد
  
  تصویر ورودی :
  
  ![watch](https://user-images.githubusercontent.com/80279784/113548317-8f1cd880-9604-11eb-9051-17803d6a1b12.png)

  تصویر خروجی :
  
  ![image](https://user-images.githubusercontent.com/80279784/113548356-a22fa880-9604-11eb-93a7-f8b329771700.png)

</div>
