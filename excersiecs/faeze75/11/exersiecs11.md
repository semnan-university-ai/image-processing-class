> # Exercise 11

***
>CODE

```ruby
im = imread('lena.png');
Ssize=(size(im));
if Ssize(3)==3
    im=rgb2gray(im);
end
figure;
ax1 = axes();
imshow(im);
title(ax1, 'original');
a = 0.1; % 10% pixels altered
b = 0.5; % 50% percent white pixels among all altered pixels
n = numel(im(:,:,1));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
idx1 = idx1' + n.*(0:size(im,3)-1);
idx1 = idx1(:);
idx2 = idx2' + n.*(0:size(im,3)-1);
idx2 = idx2(:);
im(idx1) = 255;
im(idx2) = 0;
figure;
ax2 = axes();
imshow(im);
title(ax2, 'noisy');

```
![alt text](https://github.com/semnan-university-ai/image-processing-class/blob/main/excersiecs/faeze75/11/Screenshot%20(30).png)
***
<div dir="rtl">

</div>



