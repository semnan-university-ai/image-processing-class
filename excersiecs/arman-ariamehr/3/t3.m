projectdir = 'benchmark\';
dinfo = dir(fullfile(projectdir));
dinfo([dinfo.isdir]) = [];     %get rid of all directories including . and ..
nfiles = length(dinfo);
folder = 'output\';
for j = 1 : nfiles
    filename = fullfile(projectdir, dinfo(j).name);
    address = fullfile(folder , dinfo(j).name);
    rgb = imread(filename);
    size(rgb);
    if size(size(rgb) , 2) == 3
        r = rgb( : , : , 1);
        g = rgb( : , : , 2);
        b = rgb( : , : , 3);
        gray = (0.3 * r) + (0.59 * g) + (0.11 * b);
        imwrite(gray , address);
    else
        imwrite(rgb , address);
    end
end