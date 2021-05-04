<div dir = "ltr">
    
```
address = 'benchmark\airplane.png';
image =rgb2gray(imread(address));


new_x = zeros(size(image,1)*size(image,2) , 1);
new_y = zeros(size(image,2)*size(image,1) , 1);

%Specify the degree
deg = input('degree : ');
%Change the image size
new_image = uint8(zeros(size(image,1) , size(image,2)));

m=1;
%Find the midpoint
midx=ceil((size(new_image,1)+1)/2);
midy=ceil((size(new_image,2)+1)/2);

for i=1:size(image,1)
    i1=i-midx;
    for j=1:size(image,2)
        %convert from cartesian to polar
        [t,r]=cart2pol(i1,j-midy);
        %Convert from radians to degree and add the degree value
        t1=radtodeg(t)+deg;
        %Convert from degree to radians
        t=degtorad(t1);
        %Convert to Cartesian Co-ordinates
        [x,y]=pol2cart(t,r);
        new_x(m)=round(x+midx);
        new_y(m)=round(y+midy);
       
         
        m=m+1;
       
       
       
    end
   
end
%check whether the values are within the image size.
new_x(new_x < 1)=1;
new_y(new_y < 1)=1;

n=1;
for i=1:size(image,1)
    for j=1:size(image,2)
        
        new_image( new_x(n) , new_y(n) ) = image(i,j);
       
        n=n+1;
    end
   
end
subplot(1,2,1)
imshow(new_image);title('without imrotate');

subplot(1,2,2)
new_image2 = imrotate(image , deg);
imshow(new_image2);title('with imrotate');
```
</div>

<div dir = "rtl">
برای چرخاندن یک تصویر باید کار های زیر قدم به قدم انجام گردد
مختصات وسط تصویر پیدا شود
تمام مختصات پیکسل ها به مختصات قطبی تبدیل گردد که خروجی آن شعاع و تتا است
تتا مرحله قبل از رایوس به درجه تبدیل گردد و سپس زاویه مد نطر به آن افزوده گردد
سپس زاویه جدید از درجه به رادیوس تبدیل گردد
در نهایت هم مختصات قطبی جدید دوباره به دکارتی تبدیل گردد

نتیجه چرخش تصویر با زاویه 163 درجه :

![image](https://user-images.githubusercontent.com/80279784/113261271-7f3f8480-92e4-11eb-9d02-f04516ace4fd.png)

</div>
