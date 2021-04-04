projectdir = 'benchmark\';
dinfo = dir(fullfile(projectdir));
dinfo([dinfo.isdir]) = [];     %get rid of all directories including . and ..
nfiles = length(dinfo);
picture = uint8(ones(500 , 500));
i = 1;
j = 1;
for amount = 1 : 25
    %read image
    filename = fullfile(projectdir, dinfo(amount).name);
    input_im = imread(filename);
    
    %if image is rgb
    if size(input_im , 3 ) == 3
        image = rgb2gray(input_im);
    %if image is gray
    else
        image = input_im;
    end
    
    row = size(image , 1);
    col = size(image , 2);
    start_i = row - 100 + 1;
    start_j = col - 100 + 1;
    
    cut = image(start_i : end , start_j : end);
    picture(i : i + 100  - 1 , j : j + 100 - 1) = cut;
    
    j = j + 100;
    if j == 501
        i = i + 100;
        j = 1;
    end
end
imshow(picture);