clc;clear;close all;

imgwatch=imread("../../../benchmark/watch.png");
[rw,cw,zw]=size(imgwatch);
figure;imshow(imgwatch)
imgpool=imread("../../../benchmark/pool.png");
[rp,cp,zp]=size(imgpool);
figure;imshow(imgpool);
R_watch = imgwatch(:, :, 1);
R_pool = imgpool(:, :, 1);
imgwatch(:, :, 1)=0;
imgpool(:, :, 1)=0;
for r=1:rw
   for c=1:cw
       if (r<=rp&& c<=cp)
          imgwatch(r,c,1)=R_pool(r,c);
          imgpool(r,c,1)=R_watch(r,c);
       end
   end
end
figure;imshow(imgwatch);
figure;imshow(imgpool); 
