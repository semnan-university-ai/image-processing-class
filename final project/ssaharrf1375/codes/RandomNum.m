function cap_alph = RandomNum(alph_count, img_count)
cap_alph = [randperm(img_count,alph_count)];
cap_alph = uint8(cap_alph);
end