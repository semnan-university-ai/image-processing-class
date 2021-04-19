theta = linspace(0, 20*pi, 256);
I1 = repmat( cos(theta), [256 1]);
I2= repmat( sin(theta), [256 1]);
I3= cat(1,I1,I2);
im = imshow(I3);
title('Tamrin 6')