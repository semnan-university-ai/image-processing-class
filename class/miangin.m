function avg = miangin(matris)
    matris_size = size(matris);
    matris = double(matris);
    sum = 1;
    for i = 1 : matris(1, 1)
        for j = 1 : matris(1, 2)
            sum = sum + matris(i, j);
        end
    end
    
    avg = round(sum / ( matris(1, 1) * matris(1, 2) ) );
end