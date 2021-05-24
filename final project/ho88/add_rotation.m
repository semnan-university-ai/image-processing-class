function image = add_rotation(img)

rand_angle = randi([-30 30]);
image = imrotate(img, rand_angle,'bilinear','crop');

end