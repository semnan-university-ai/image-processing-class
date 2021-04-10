clc;
close all;
clear all;
image = imread('../../../benchmark/zelda.png');
figure,imshow(image);
imageSize = size(image);
height = imageSize(1,1);
width = imageSize(1,2);
imageSec = image;
scale=50;
for i=height:-1:1
    for j=width:-1:1
        if floor(mod( j , scale )) == 0 
            imageSec(i, j) = 255;
        end
        if floor(mod( i , scale )) == 0 
            imageSec(i, j) = 255;
        end
        
    end
   
end
sx=0;
sy=0;
imageResult = image;
for y=1:scale:height
    sx =0;
    for x=1:scale:width
    if  (sy == 5)
        if (sx == 4)|| (sx == 6)
            for u=1:scale
                for v=1:scale
                    imageResult(sy*scale+u,sx*scale+v)=48;
                    %128
                end
            end
        end            
    end
    sx=sx+1;        
    end
    sy=sy+1;   
end

figure,imshow(imageSec);
%imsave;
figure,imshow(imageResult);
%imsave;