spectrum=imread('C:\Users\PC\Desktop\cat.png');
R=spectrum(:,:,1);
G=spectrum(:,:,2);
B=spectrum(:,:, 3);
temp=R;
R=B;
B=temp;
subplot(2,2,1)
imshow(R);
title('R');
subplot(2,2,2)
imshow(G);
title('G');
subplot(2,2,3)
imshow(B);
title('B');
subplot(2,2,4)
imshow(spectrum);
title('spectrum');

