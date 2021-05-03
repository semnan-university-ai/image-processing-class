function histo = histogram(px_values)
    
    for i = 1 : 255
       
       histo(i) = sum(px_values(:)==i);
       
    end
    
end