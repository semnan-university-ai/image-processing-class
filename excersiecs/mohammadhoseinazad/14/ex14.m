
images = dir('D:\matlab\math\bin\benchmark\*.png');

for i= 1:length(images)
    image=(images(i).name);
    
    [rows, columns, numberOfColorChannels] = size(image);
    if numberOfColorChannels > 1
    % It's a true color RGB image.  We need to convert to gray scale.
        Igray = rgb2gray(image);
    else
    % It's already gray scale.  No need to convert.
    Igray = image;
    end
    Image = imread(Igray);
    subplot(6,2,i)
    imhist(Image);
end