<div dir = "ltr">
    
```
FilterSpec = {'*.jpg' ; '*.jpeg' ; '*.png' ; '*.PNG' ; '*.*'};
[name, path] = uigetfile(FilterSpec,'choose a file');
address = [path name];
input_im = imread(address);
image = rgb2gray(input_im);
row = size(image , 1);
col = size(image , 2);
x = input('x = ');
y = input('y = ');
row_rec = input('row = ');
col_rec = input('col = ');
output = uint8(zeros(row_rec , col_rec));
for i = 1 : row_rec
    for j = 1 : col_rec
        output(i,j) = image(y + i - 1 , x + j - 1 );
    end
end
imshow(output);
```
</div>

<div dir = "rtl">
  ابتدا به صورت گرافیکی یک تصویر به برنامه وارد می شود
  در گام بعد تصویر وارد شده خاکستری می گردد
  سپس مختصات شروع و اندازه از کاربر گرفته می شود
  با حرکت در تصویر اصلی تک تک پیکسل ها در تصویری سیاه رنگ که به اندازه وارد شده است رونوشت گرفته می شود
  
  تصویر ورودی :
  
  ![baboon](https://user-images.githubusercontent.com/80279784/113265576-8f0d9780-92e9-11eb-94c9-414d6cb16667.png)
  
  خروجی برنامه :
  
  ![image](https://user-images.githubusercontent.com/80279784/113265700-b06e8380-92e9-11eb-8660-932130b2f833.png)

</div>
