<div dir = "ltr">
    
```
projectdir = 'clock\';
dinfo = dir(fullfile(projectdir));
dinfo([dinfo.isdir]) = [];     %get rid of all directories including . and ..
nfiles = length(dinfo);
for amount = 1 : nfiles
    %read image
    filename = fullfile(projectdir, dinfo(amount).name);
    input_im = imread(filename);
    
    image = rgb2gray(input_im);
    
    subplot(2,6,amount);
    imhist(image);
end

```
</div>


<div dir = "rtl">
  ابتدا آدرس مشخص مي شود
  براي تمام فايل هاي موجود در آن آدرس ابتدا تصوير به خاكستري تبديل شده و در قدم بعدي به كمك تابع imhist هيستوگرام تصوير ايجاد مي گردد و در نهايت هم به نمايش در مي آيد

  خروجي برنامه :

  ![image](https://user-images.githubusercontent.com/80279784/113323460-37901b80-932b-11eb-9504-9eeeab8fef84.png)

  با تشکر از خانم "نسترن ملک پور " که در تهیه دیتا ست راهنمایی و کمک زیادی به اینجانب نموده اند


</div>
```
