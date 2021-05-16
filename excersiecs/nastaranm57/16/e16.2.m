addpath("../../../benchmark/");
image =imread("zelda.png");
subplot(1,2,1)
imshow(image);
title 'tasvire asli'
eye_left=[212 272 221 277 233 280 245 279 259 273 251 263 234 258 220 262 ];
eye_right=[303 267 314 275 327 277 338 274 348 265 336 255 325 254 311 258];
colorCode=140;
image = insertShape(image,'FilledPolygon',{eye_left,eye_right},...
    'Color',[130 130 130],'Opacity',1);

subplot(1,2,2)
imshow(image);
title 'tasvire nahaii'
