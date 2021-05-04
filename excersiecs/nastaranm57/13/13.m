input_im = imread('.\jd.png');
if size(input_im , 3) == 3
    image = rgb2gray(input_im);
else
    image = input_im;
end
amount = input('å ÊÚÏÇÏ Ú˜Ó äæ?Ò ÏÇÑ ã? ÎæÇå?Ï¿:');
chart = zeros(1,amount);
for i = 1 : amount 
    percent = rand;
    noise = imnoise(image , 'salt & pepper' , percent);
    avg = mean(mean(noise));
    chart(1,i) = avg;
    fid=fopen('C:\Users\PC\Desktop\1.csv','w');
fprintf(fid,'%6.1f',chart);
end
fclose(fid);
t=readtable('C:\Users\PC\Desktop\1.csv');
