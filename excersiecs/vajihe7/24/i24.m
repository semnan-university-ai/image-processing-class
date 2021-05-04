close all;
clear;
clc;

img1=imread("pool.png");
image_p=img1;
[Rp,Cp,Zp]=size(image_p);

img2=imread("watch.png");
image_w=img2;
[Rs,Cs,Zs]=size(image_w);

R_S = image_w(:, :, 1);
R_p = image_p(:, :, 1);
image_w(:, :, 1)=0;
image_p(:, :, 1)=0;

for i_r  =  1 : Rs
   for i_c  =  1 : Cs
       
       if (   i_c  <=  Cp  && i_r  <=  Rp)
          image_p(i_r,i_c,1)= R_S(i_r,i_c);
          image_w(i_r,i_c,1)= R_p(i_r,i_c);
       end
   end
end

subplot(2,2,1),imshow(img1),title('pool');
subplot(2,2,3),imshow(img2),title('watch');
subplot(2,2,2),imshow(image_p),title('k red watch-pool'); 
subplot(2,2,4),imshow(image_w),title('k red pool-watch');