 I = imread('1.jpg');       % read image
      J = rgb2gray(I);      % change rgb image to grayscale
      p3= 0;                 
      p4 = 0.05;
      J = im2double(J);     % change format to double
      b = J + sqrt(p4)*randn(size(J)) + p3;  % parameters to change b
  subplot(121)              % 1 row, 2 col, choose 1st
  imshow(I)
  title('Original Image')
  subplot(122)
  imshow(b)
  title('adding Salt-Pepper Noise')