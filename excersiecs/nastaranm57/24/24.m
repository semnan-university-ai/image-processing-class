
addpath("../../../benchmark/");
pool = imread("pool.png");
pool=imresize(pool,[768 1024]);
subplot(2,2,1)
imshow(pool);
title('original pool');
addpath("../../../benchmark/");
watch = imread("watch.png");
subplot(2,2,3)
imshow(watch);
title('original watch');
pg=pool(:,:,1);
wg= watch(:,:,1);
watch(:,:,1)=pg;
pool(:,:,1)=wg;
subplot(2,2,2)
imshow(pool);
title('changed pool');
subplot(2,2,4)
imshow(watch);
title('changed watch');
