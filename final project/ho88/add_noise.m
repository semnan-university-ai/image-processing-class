function image = add_noise(img, noise_density)

image = imnoise(img, 'salt & pepper', noise_density);

end