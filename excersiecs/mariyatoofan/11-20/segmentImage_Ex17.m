function [BW,maskedImage] = segmentImage_Ex17(im,mask)
%  [BW,MASKEDIMAGE] = segmentImage(IM,MASK) segments image IM using
%  auto-generated code from the imageSegmenter App starting from the initial
%  segmentation specified by binary mask MASK. The final segmentation is
%  returned in BW and a masked image is returned in MASKEDIMAGE.



% Evolve segmentation
BW = activecontour(im, mask, 100, 'Chan-Vese');

% Form masked image from input image and segmented image.
maskedImage = im;
maskedImage(~BW) = 0;
end
