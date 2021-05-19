function [width,height] = Normalize(alphabet_count,width,height)
    cn = floor(alphabet_count/10);
    if( cn == 0)
        width = width * 1;
        height = height * 1;
    elseif( cn == 1 || cn == 2)
        width = width * 1.5;
        height = height * 1;
    else
        width = width * cn;
        height = height * 2;
    end
end