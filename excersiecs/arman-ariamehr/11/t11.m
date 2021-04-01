address = 'benchmark\airplane.png';
input_im = imread(address);
im = rgb2gray(input_im);
row = size(im , 1);
col = size(im , 2);
si = row * col;
percent = input('percent = ');
choose = round((si * percent) / 100);
for i = 1 : choose
    x = randi([1 row]);
    y = randi([1 col]);
    im(x,y) = 0;
end


address2 = 'benchmark\cat.png';
input_im = imread(address2);
im2 = rgb2gray(input_im);
row2 = size(im2 , 1);
col2 = size(im2 , 2);
si2 = row2 * col2;
percent2 = input('percent = ');
choose2 = round((si2 * percent2) / 100);
for i = 1 : choose2
    x = randi([1 row2]);
    y = randi([1 col2]);
    im2(x,y) = 0;
end

subplot(1,2,1)
imshow(im);title('airplane');

subplot(1,2,2)
imshow(im2);title('cat');
