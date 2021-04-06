<div dir="rtl">

#### تمرین 11


### کد:
</div>

```matlab
im = imread('C:\SemnanClass\9902\TA\Benchmark\airplane.png');
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
---
<div dir="rtl">

#### برسی کد:
1. 
-    https://www.mathworks.com/matlabcentral/answers/519835-how-to-make-salt-pepper-noise-own-code<br />
</div>

<div dir="rtl">
