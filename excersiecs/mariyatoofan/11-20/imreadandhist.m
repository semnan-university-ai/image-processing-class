function y=imreadandhist(f,file)
figure(f)
subplot(211)
I= imread(file);
imshow(I)
r = rgb2gray(I);
subplot(212)
imhist(r)