function imageOut = e9_cut(name,startPixelWidth,endPixelWidth,startPixelHeight,endPixelHeight)
%E9_CUT Summary of this function goes here
%   Detailed explanation goes here
image=imread(strcat('benchmark/',name));
        n=size(size(image));
        if n(2) ==3
            image=rgb2gray(image);
        end
        image_cuted =image(startPixelWidth-1:endPixelWidth,startPixelHeight-1:endPixelHeight);
        imageOut=image_cuted;
end

