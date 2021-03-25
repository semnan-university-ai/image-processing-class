img_path = 'C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\*.png';
images = dir('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\*.png');
filename = {};
new={};

for i=1:length(images)
  %filename{i} = images(i).name; 
  %imagecr=imread(filename{i});
  filename(i).data = imread( fullfile(img_path, images(i).name));
  croppedImage = imcrop(imagecr, [80, 80, 500, 500]);
  croppedImage{i}=croppedImage;
end
 for i=1:20
    image=[croppedImage{i}];
    new{i}=image;
 end
 
merrged=cat(new{1},new{2},new{3},new{4},new{5});
imshow(merrged)

%N = length(images) ;
%croppedImage= imread(images(1).name) ;
%for i = 1:N
    %croppedImage = imread(images(i).name) ;
   % croppedImage = imcrop(input, [80, 80, 500, 500]);
%end

%input=imread('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\lena.png');
%montage(input,input,input,'size',[1 2]);
%imshowpair(input, input, 'montage')



%[rows, columns, numberOfColorChannels] = size(input);
% Now crop
%left = columns/2 - width/2;
%top = rows/2 - height/2;
%croppedImage = imcrop(input, [80, 80, 500, 500]);
%imshow(croppedImage);