projectdir = 'C:\Users\PC\Documents\MATLAB\benchmark'; %moshakhas kardane masire file.
dinfo = dir(fullfile(projectdir));
dinfo([dinfo.isdir]) = []; 
nfiles = length(dinfo);
picture = uint8(ones(500 , 500));
i = 1;
j = 1;
for amount = 1 : 25 % 25 adad tasvir ra rafakhani mikonad.
    filename = fullfile(projectdir, dinfo(amount).name);
    input_im = imread(filename);
    if size(input_im , 3 ) == 3 % dar soorati ke tasvir rangi bashdad, tabdil be khakestari mionim.
        image = rgb2gray(input_im);
    else % agr tasvir khakestari bood, faghat vared mikonim
        image = input_im;
    end
    
    row = size(image , 1); % baraye boreshe 100x100 az samte raste paiine tasvir:
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