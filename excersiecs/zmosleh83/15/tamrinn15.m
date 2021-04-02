% RGB = imread('C:\SemnanClass\9902\TA\Benchmark\pool.png');
% imshow(RGB)
% I = rgb2gray(RGB);
% figure
% imshow(I)
img = imread('c:\SemnanClass\9902\TA\benchmark\pool.png');
imshow(img);
I = img;
[r c] = size(I);
for i=1:r
    for j=1:c
        if I(i,j) > 230 %here i am changing 240 to different values to get result 
            %but this is just some hack
            I(i,j) = 0;
        end
    end
end
imshow(I);
		