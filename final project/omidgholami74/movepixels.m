function Iout=movepixels(I,Tx,Ty)
% This function MOVEPIXELS, will (backwards) translate the pixels 
% of an 2D image according to x, y translation images 
% (bilinear interpolated).
%
%  J = movepixels(I,Tx,Ty);
%
% inputs,
%   I : The input image
%   Tx : Translation in x direction
%   Ty : Translation in y direction
%
% outputs,
%   J : The transformed image.
%
% Description:
%   Backwards tranformation, the intensity of a pixel in the output image
%   is the bilinear interpolated value of a coordinate in the input image.
%   for example: J(10,10) = I(10+Tx(10,10),10+Ty(10,10));
%
% example:
%   I = rgb2gray(im2double(imread('lena.jpg')));
%   Tx = imfilter(100*rand(size(I))-50,fspecial('gaussian',[32 32],6));
%   Ty = imfilter(100*rand(size(I))-50,fspecial('gaussian',[32 32],6));
%   J = movepixels(I,Tx,Ty);
%   figure, imshow(J), title('The warped image');
%
% Function is written by D.Kroon University of Twente (January 2009)

%  The uniform coordinates of the output image
[px,py]=ndgrid(0:size(I,1)-1,0:size(I,2)-1);

% The coordinates in the input image, which will be translated to the uniform 
% coordinates in the input image.
pxrealt=px+Tx;
pyrealt=py+Ty;

% Determine the coordinates of the pixel(s) which will be come the current pixel
% (using linear interpolation)  
xBas0=floor(pxrealt); 
yBas0=floor(pyrealt);
xBas1=xBas0+1;           
yBas1=yBas0+1;

% Linear interpolation constants (percentages)
xCom=pxrealt-xBas0; 
yCom=pyrealt-yBas0;
perc0=(1-xCom).*(1-yCom);
perc1=(1-xCom).*yCom;
perc2=xCom.*(1-yCom);
perc3=xCom.*yCom;
                
% limit indexes to boundaries
check_xBas0=(xBas0<0)|(xBas0>(size(I,1)-1));
check_xBas1=(xBas1<0)|(xBas1>(size(I,1)-1));
check_yBas0=(yBas0<0)|(yBas0>(size(I,2)-1));
check_yBas1=(yBas1<0)|(yBas1>(size(I,2)-1));
xBas0(check_xBas0)=0; 
xBas1(check_xBas1)=0; 
yBas0(check_yBas0)=0; 
yBas1(check_yBas1)=0; 

% Detect color image
if(ndims(I)==2), lo=1; else lo=3;  Iout=zeros(size(I)); end

% Loop through all colors RGB    
for i=1:lo;    
    Islice=double(I(:,:,i));
    % Get the intensities of all 4 neigborhs of every coordinate
    intensity_xyz0=Islice(1+xBas0+yBas0*size(I,1));
    intensity_xyz1=Islice(1+xBas0+yBas1*size(I,1)); 
    intensity_xyz2=Islice(1+xBas1+yBas0*size(I,1));
    intensity_xyz3=Islice(1+xBas1+yBas1*size(I,1));
    % Make pixels which were before outside the image black
    intensity_xyz0(check_xBas0|check_yBas0)=0;
    intensity_xyz1(check_xBas0|check_yBas1)=0;
    intensity_xyz2(check_xBas1|check_yBas0)=0;
    intensity_xyz3(check_xBas1|check_yBas1)=0;
	% Set the output image
	Iout_slice=intensity_xyz0.*perc0+intensity_xyz1.*perc1+intensity_xyz2.*perc2+intensity_xyz3.*perc3;
    Iout(:,:,i)=reshape(Iout_slice,[size(I,1) size(I,2)]);
end

% Set class of output image to input image.
if(isa(I,'single')), Iout=single(Iout); end
if(isa(I,'uint8')), Iout=uint8(Iout); end
if(isa(I,'uint16')), Iout=uint16(Iout); end
if(isa(I,'uint32')), Iout=uint32(Iout); end
if(isa(I,'int8')),   Iout=int8(Iout); end
if(isa(I,'int16')), Iout=int16(Iout); end
if(isa(I,'int32')), Iout=int32(Iout); end




