# تمرین 10

<br />
<div dir="rtl">
    باعث می شود پس از هر بار اجرای برنامه پنجره ی فرمان ها پاک شود   
</div>

```
clc;
close all;
clear all;
```
<div dir="rtl">
    تصاویر اعداد را وارد می کنیم
</div>

```
img0 = imresize(rgb2gray(imread("numbers/0.png")),[300 300]);
img1 = imresize(rgb2gray(imread("numbers/1.png")),[300 300]);
img2 = imresize(rgb2gray(imread("numbers/2.png")),[300 300]);
img3 = imresize(rgb2gray(imread("numbers/3.png")),[300 300]);
img4 = imresize(rgb2gray(imread("numbers/4.png")),[300 300]);
img5 = imresize(rgb2gray(imread("numbers/5.png")),[300 300]);
img6 = imresize(rgb2gray(imread("numbers/6.png")),[300 300]);
img7 = imresize(rgb2gray(imread("numbers/7.png")),[300 300]);
img8 = imresize(rgb2gray(imread("numbers/8.png")),[300 300]);
img9 = imresize(rgb2gray(imread("numbers/9.png")),[300 300]);
```

<div dir="rtl">
    تعداد کپچای عددی را مشخص می کنیم . می توانیم با تغییر این متغییر هر تعداد کپچا تولید کنیم.  
</div>

```
numberOfCaptcha = 4;
```

<div dir="rtl">
 به تعداد تعیین شده عدد رندم با توزیع یکسان تولید کرده و آن را ضرب در 10 کرده و منهای 1 می کنیم تا از 10 بدست آمدن جلوگیری شود.
</div>

```
x=rand(1,numberOfCaptcha);
x10=round(x*10-1);
```

<div dir="rtl">
    با استفاده از دستور switch به ازای هر عدد بدست آمده تصویر متناظر  را به آرایه وصله می چسبانیم.
</div>

```
for i=1 : numberOfCaptcha 
    switch x10(1,i);
        case 0 
            [Wid,Hei]= size(img0);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img0(u,y);
                    end
                end
        case 1
            [Wid,Hei]= size(img1);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img1(u,y);
                    end
                end
        case 2
            [Wid,Hei]= size(img2);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img2(u,y);
                    end
                end
        case 3
            [Wid,Hei]= size(img3);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img3(u,y);
                    end
                end
        case 4
            [Wid,Hei]= size(img4);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img4(u,y);
                    end
                end
        case 5
            [Wid,Hei]= size(img5);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img5(u,y);
                    end
                end
        case 6
            [Wid,Hei]= size(img6);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img6(i,y);
                    end
                end
        case 7
            [Wid,Hei]= size(img7);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img7(u,y);
                    end
                end
        case 8
            [Wid,Hei]= size(img8);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img8(u,y);
                    end
                end
        case 9
            [Wid,Hei]= size(img9);
                for u = 1 : Wid
                    for y = 1 :Hei
                        PatchArray(u,(i-1)*300+y) = img9(u,y);
                    end
                end
        otherwise
            disp('other value')
    end
end
```

<div dir="rtl">
 و در نهایت آنها را نمایش می دهیم.
</div>

```
figure,
imshow(uint8(uint8(PatchArray)));
```
![output](t10-1.png)
![output](t10-2.png)
![output](t10-3.png)
![output](t10-4.png)
![output](t10-5.png)
