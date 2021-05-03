input_im = imread('benchmark\fruits.png');

r = input_im( : , : , 1);
g = input_im( : , : , 2);
b = input_im( : , : , 3);

r_hist = myimhist(r);
g_hist = myimhist(g);
b_hist = myimhist(b);

subplot(2,3,1)
imshow(r),title('r channel')

subplot(2,3,2)
imshow(g),title('g channel')

subplot(2,3,3)
imshow(b),title('b channel')

subplot(2,3,4)
plot(r_hist),title('r channel histogram')

subplot(2,3,5)
plot(g_hist),title('g channel histogram')

subplot(2,3,6)
plot(b_hist),title('b channel histogram')



function [y]=myimhist(img)
    [r,c]=size(img);
    y=zeros(1,256);
    for i=1:r
        for j=1:c
            z=img(i,j);
            y(z+1)=y(z+1)+1;
        end
    end
end