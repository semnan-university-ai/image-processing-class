function imgnoise = SaltPapper(img,a,b)
% create the noise --------------------------------------------------------
imgnoise = img;
% a% pixels altered
% b% percent white pixels among all altered pixels
n = numel(imgnoise(:,:));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
imgnoise(idx1) = 1;
imgnoise(idx2) = 0;
end

