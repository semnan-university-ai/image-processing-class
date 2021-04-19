<div dir = "ltr">
    
```
address = 'benchmark\pool.png';
input_im = imread(address);
r = input_im( : , : , 1);
g = input_im( : , : , 2);
b = input_im( : , : , 3);
image = rgb2gray(input_im);
[row , col] = size(image);
copy_im = image;

[center , radius] = imfindcircles(image , [20 40] , 'ObjectPolarity' , 'bright' , 'sensitivity' , 0.9);

data = round( [fliplr(center) radius] );

amount = size(center , 1);
i_cen = ceil(row / 2 + 1);
j_cen = ceil(col / 2 + 1);
value = image(i_cen , j_cen);

for k = 1 : amount
    i = data(k,1);
    j = data(k,2);
    
    r_value = r(i , j , 1);
    g_value = g(i , j , 1);
    b_value = b(i , j , 1);
    
    if r_value > 150 && g_value > 150 && b_value < 15
        i_cen = data(k , 1);
        j_cen = data(k , 2);
        rad = data(k , 3) + 20;

        for i1 = i_cen - rad : i_cen + rad
            for j1 = j_cen - rad : j_cen + rad
                copy_im(i1,j1) = value;
            end
        end
    end
end
imshow(copy_im);
```
</div>


<div dir = "rtl">
  پس از خواندن تصویر سه رنگ اصلی تصویر جدا شده و تصویر به خاکستری تبدیل می گردد
  
  سپس تمام دایره هایی به شعاع 20 تا 40 پیدا می گردد
  
  شعاع به کمک تابع imdistline تخمین زده شده است.
  
  دقت نیز با آزمون و خطا به دست آمده است.
  
  پس از پیدا شدن دایره ها مرکز دایره ای که مولفه قرمز و سبز بالا ولی آبی کمی دارد با جانشین کردن مولفه خاکستری عنصر وسط تصویر حذف می گردد
  
  تصویر ورودی :
  
  ![pool](https://user-images.githubusercontent.com/80279784/113545727-f3896900-95ff-11eb-8221-21e5ea155594.png)

  تصویر خروجی :
  
  ![image](https://user-images.githubusercontent.com/80279784/113545761-09972980-9600-11eb-8bcf-1c106c811900.png)


</div>
