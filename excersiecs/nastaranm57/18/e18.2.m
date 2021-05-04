addpath("../../../benchmark/");
image=imread("watch.png");
subplot(1,2,1)
imshow(image);
title 'tasvire asli'
saat=[354 508 368 526  388 545 415 561 440 572 464 578 492 582 524 582 557 577 591 567 624 551 654 528 680 496 692 460 694 425 687 400 662 358 633 331 591 310 552 298 503 296 462 304 424 315 393 334 366 356 350 379 337 406 332 434 333 460 342 486];

colorCode=140;
image = insertShape(image,'FilledPolygon',{saat},'Color',[255 255 255],'Opacity',1);

subplot(1,2,2)
imshow(image);
title 'tasvire nahaii'
