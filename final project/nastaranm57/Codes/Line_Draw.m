function captcha_image_r = Line_Draw(captcha_image_r, width, height, LineWidth)
captcha_image_r = insertShape(captcha_image_r,'Line',[1 50 width 100],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Line',[1 150 width 50],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Line',[1 100 width 100],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Line',[1 80 width 150],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Line',[30 1 80 height],'LineWidth',LineWidth, 'color','green');
captcha_image_r = insertShape(captcha_image_r,'Line',[100 1 150 height],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Line',[200 1 70 height],'LineWidth',LineWidth, 'color','green');
captcha_image_r = insertShape(captcha_image_r,'Line',[250 1 300 height],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Line',[300 1 400 height],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Line',[width 1 370 height],'LineWidth',LineWidth, 'color','yellow');

captcha_image_r = insertShape(captcha_image_r,'Circle',[100 100 70],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Circle',[300 100 70],'LineWidth',LineWidth, 'color','yellow');
captcha_image_r = insertShape(captcha_image_r,'Circle',[400 100 70],'LineWidth',LineWidth, 'color','yellow');

captcha_image_r = rgb2gray(captcha_image_r);
end