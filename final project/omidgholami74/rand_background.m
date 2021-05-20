function change_back = rand_background(img,alphabet_count)
    if randi(alphabet_count) ==randi(alphabet_count)
        change_back=imcomplement(img);
    else
        change_back=img;
    end
    
end

