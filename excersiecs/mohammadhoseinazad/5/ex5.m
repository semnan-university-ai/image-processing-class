I = imread('C:\Users\nmzis\OneDrive\Desktop\4197843.jpg'); 
subplot(2,2,1) 
imshow(I)
title 'first image' 
% Flip left/right: 
Ir = flip(I,2); 
subplot(2,2,2) 
imshow(Ir)
title 'changed image'
% Join the original and flipped images: 
IIr = horzcat(Ir,I); 
subplot(2,2,3:4) 
imshow(IIr)
title 'rejoined images'