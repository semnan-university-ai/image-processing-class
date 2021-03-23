
images = dir('C:\Users\nmzis\OneDrive\Documents\GitHub\image-processing-class\benchmark\*.png');
for i = 1:numel(images)
  filename = images(i).name;
  image = imread(filename); 
  croppedImage = imcrop(image, [80, 80, 500, 500]);
  %imshow(filename);
  % apply processing to the loaded image
  % save the image to an array or back to the folder using 
end

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