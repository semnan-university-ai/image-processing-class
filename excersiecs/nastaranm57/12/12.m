addpath("../../../benchmark/");
im1 =imread("lena.png"); 
im = rgb2gray(im1);
row = size(im , 1);
col = size(im , 2);

%salt & pepper
noise_im = im;

si = row * col;

percent = input('percent = ');
choose = round((si * percent) / 100);

for i = 1 : choose
    x = randi([1 row]);
    y = randi([1 col]);
    noise_im(x,y) = 0;
end

%mean filter
avg_im = uint8(zeros(row,col));

for i = 1 : row
    for j = 1 : col
        rmin = max(1 , i-1);
        rmax = min(row , i+1);
        cmin = max(1,j-1);
        cmax = min(col , j+1);
        temp = noise_im(rmin : rmax , cmin : cmax);
        avg_im(i,j) = mean(mean(temp));
    end
end

%median filter
med_im = uint8(zeros(row,col));

for i = 1 : row
    for j = 1 : col
        rmin = max(1 , i-1);
        rmax = min(row , i+1);
        cmin = max(1,j-1);
        cmax = min(col , j+1);
        temp = noise_im(rmin : rmax , cmin : cmax);
        med_im(i,j) = median(median(temp));
    end
end

%calculate
mean_noise = round(mean(mean(noise_im)));
mean_avg = round(mean(mean(avg_im)));
mean_med = round(mean(mean(med_im)));

%show
display(mean_noise);
display(mean_avg);
display(mean_med);

%show
subplot(2,2,1);
imshow(im1);title('ÊÕæ?Ñ ÇÕá?');

subplot(2,2,2);
imshow(noise_im);title('äæ?Ò ÝáÝá & äã˜');

subplot(2,2,3);
imshow(avg_im);title('Ý?áÊÑ ã?Çä?ä');

subplot(2,2,4);
imshow(med_im);title('Ý?áÊÑ ã?Çäå');
