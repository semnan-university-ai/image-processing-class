function cap_img_r = LineDraw(cap_img_r, wi, he, LineWi)
cap_img_r = insertShape(cap_img_r,'Line',[1 50 wi 100],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[1 150 wi 50],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[1 100 wi 100],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[1 80 wi 150],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[30 1 80 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[100 1 150 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[200 1 70 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[250 1 300 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[300 1 400 he],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Line',[wi 1 370 he],'LineWidth',LineWi, 'color','white');

cap_img_r = insertShape(cap_img_r,'Circle',[100 100 70],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Circle',[300 100 70],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Circle',[400 100 70],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Circle',[450 200 80],'LineWidth',LineWi, 'color','white');
cap_img_r = insertShape(cap_img_r,'Circle',[500 150 80],'LineWidth',LineWi, 'color','blue');
cap_img_r = insertShape(cap_img_r,'Circle',[200 100 80],'LineWidth',LineWi, 'color','blue');

cap_img_r = rgb2gray(cap_img_r);
end