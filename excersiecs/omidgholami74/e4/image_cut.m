function imageOut = image_cut(imageName,cropSize)
%E4_FUN_CUT Summary of this function goes here
%   Detailed explanation goes here
image=imread(strcat('benchmark/',imageName));
        n=size(size(image));
        if n(2) ==3
            image=rgb2gray(image);
        end
        imageSize =size(image);
        image_cuted =image(imageSize(1,1)-(cropSize-1):imageSize(1,1),imageSize(1,2)-(cropSize-1):imageSize(1,2));
        imageOut=image_cuted;
end

