projectdir = 'D:\programming\MATLAB\image_processing\clock';
dinfo = dir(fullfile(projectdir));
dinfo([dinfo.isdir]) = [];     %get rid of all directories including . and ..
nfiles = length(dinfo);
for amount = 1 : nfiles
    %read image
    filename = fullfile(projectdir, dinfo(amount).name);
    input_im = imread(filename);
    
    image = rgb2gray(input_im);
    
    subplot(2,6,amount);
    chart = imhist(image)';
    plot(chart);
end
