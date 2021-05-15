function imageNoisy = CustomSaltAndPepper(image,a,b)
% create the noise --------------------------------------------------------
imageNoisy = image;
% a% pixels altered
% b% percent white pixels among all altered pixels
n = numel(imageNoisy(:,:));
m = fix(a*n);
idx = randperm(n, m);
k = fix(b*m);
idx1 = idx(1:k);
idx2 = idx(k+1:end);
imageNoisy(idx1) = 1;
imageNoisy(idx2) = 0;
end

