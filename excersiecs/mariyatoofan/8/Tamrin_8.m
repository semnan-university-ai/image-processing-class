image = imread('MyImage.jpg');
[nrows ncols nslices] = size(image);
midx=ceil((ncols+1)/2);
midy=ceil((nrows+1)/2);
clc
imagepad=image;
Mr = [cos(pi/4) sin(pi/4); -sin(pi/4) cos(pi/4)]; % 45 degree rotation
figure(1)
imshow(image)
title('Original')
figure(2)
Myrotate(ncols,nrows,midx, midy,nslices, Mr, imagepad);
title('45 degree')

Mr90 = [cos(pi/2) sin(pi/2); -sin(pi/2) cos(pi/2)]; % 90 degree rotation
figure(3)
Myrotate(ncols,nrows,midx, midy,nslices, Mr90, imagepad);
title('90 degree')

Mr120 = [cos(2*pi/3) sin(2*pi/3); -sin(2*pi/3) cos(2*pi/3)]; % 120 degree rotation
figure(4)
Myrotate(ncols,nrows,midx, midy,nslices, Mr120, imagepad);
title('120 degree')

Mr180 = [cos(pi) sin(pi); -sin(pi) cos(pi)]; % 180 degree rotation
figure(5)
Myrotate(ncols,nrows,midx, midy,nslices, Mr180, imagepad);
title('180 degree')
