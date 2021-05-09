function [Histo] = rgbHisto( colorChanel )

    for i=0 : 255
        Histo(i+1)=sum(colorChanel(:)==(i));
    end

end

