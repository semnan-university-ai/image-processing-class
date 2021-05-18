function res = ssim(image1_filename, image2_filename, K, window, L)

image1 = image1_filename;
image2 = image2_filename;
ssim_map = -Inf;
if (nargin < 2 || nargin > 5)
   res = -Inf;
   ssim_map = -Inf;
   return;
end

if (size(image1) ~= size(image2))
   res = -Inf;
   ssim_map = -Inf;
   return;
end

[M N] = size(image1);

if (nargin == 2)
   if ((M < 11) || (N < 11))
	   res = -Inf;
	   ssim_map = -Inf;
      return
   end
   window = fspecial('gaussian', 11, 1.5);
   K(1) = 0.01;
   K(2) = 0.03;
   L = 255;
end

if (nargin == 3)
   if ((M < 11) || (N < 11))
	   res = -Inf;
	   ssim_map = -Inf;
      return
   end
   window = fspecial('gaussian', 11, 1.5);
   L = 255;
   if (length(K) == 2)
      if (K(1) < 0 || K(2) < 0)
		   res = -Inf;
   		ssim_map = -Inf;
	   	return;
      end
   else
	   res = -Inf;
   	ssim_map = -Inf;
	   return;
   end
end

if (nargin == 4)
   [H W] = size(window);
   if ((H*W) < 4 || (H > M) || (W > N))
	   res = -Inf;
	   ssim_map = -Inf;
      return
   end
   L = 255;
   if (length(K) == 2)
      if (K(1) < 0 || K(2) < 0)
		   res = -Inf;
   		ssim_map = -Inf;
	   	return;
      end
   else
	   res = -Inf;
   	ssim_map = -Inf;
	   return;
   end
end

if (nargin == 5)
   [H W] = size(window);
   if ((H*W) < 4 || (H > M) || (W > N))
	   res = -Inf;
	   ssim_map = -Inf;
      return
   end
   if (length(K) == 2)
      if (K(1) < 0 || K(2) < 0)
		   res = -Inf;
   		ssim_map = -Inf;
	   	return;
      end
   else
	   res = -Inf;
   	ssim_map = -Inf;
	   return;
   end
end


image1 = double(image1);
image2 = double(image2);
f = max(1,round(min(M,N)/256));
if(f>1)
    lpf = ones(f,f);
    lpf = lpf/sum(lpf(:));
    image1 = imfilter(image1,lpf,'symmetric','same');
    image2 = imfilter(image2,lpf,'symmetric','same');

    image1 = image1(1:f:end,1:f:end);
    image2 = image2(1:f:end,1:f:end);
end

C1 = (K(1)*L)^2;
C2 = (K(2)*L)^2;
window = window/sum(sum(window));

mu1   = filter2(window, image1, 'valid');
mu2   = filter2(window, image2, 'valid');
mu1_sq = mu1.*mu1;
mu2_sq = mu2.*mu2;
mu1_mu2 = mu1.*mu2;
sigma1_sq = filter2(window, image1.*image1, 'valid') - mu1_sq;
sigma2_sq = filter2(window, image2.*image2, 'valid') - mu2_sq;
sigma12 = filter2(window, image1.*image2, 'valid') - mu1_mu2;

if (C1 > 0 && C2 > 0)
   ssim_map = ((2*mu1_mu2 + C1).*(2*sigma12 + C2))./((mu1_sq + mu2_sq + C1).*(sigma1_sq + sigma2_sq + C2));
else
   numerator1 = 2*mu1_mu2 + C1;
   numerator2 = 2*sigma12 + C2;
	denominator1 = mu1_sq + mu2_sq + C1;
   denominator2 = sigma1_sq + sigma2_sq + C2;
   ssim_map = ones(size(mu1));
   index = (denominator1.*denominator2 > 0);
   ssim_map(index) = (numerator1(index).*numerator2(index))./(denominator1(index).*denominator2(index));
   index = (denominator1 ~= 0) & (denominator2 == 0);
   ssim_map(index) = numerator1(index)./denominator1(index);
end

res = mean2(ssim_map);

return
