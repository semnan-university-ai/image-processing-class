addpath("../../../benchmark/");
spectrum = imread("cat.png");
R=spectrum(:,:,1);
spectrum(:,:,1)=spectrum(:,:,3);
spectrum(:,:, 3)=R;
subplot(2,2,1)
B=spectrum(:,:, 3);
G=spectrum(:,:, 2);
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
