function [J,Tx,Ty]=PinchSpherize(I,Gamma,R0)
% Function PINCHSPHERIZE warps the image around a 3D spherical
% shape, or performs Pinch transform. (Geometric Distortion filter).
%
% [Iwarped, Tx, Ty] = PinchSpherize(I,Gamma,R0)
%
% inputs,
%   I : The 2D input image (greyscale or color)
%   Gamma: Gives the amount of distortion in degrees, range -90,90
%          (defaults to 40)
%            Gamma  = 0, no distortion
%            Gamma  < 0, Pinch transform
%            Gamma  > 0, Spherical transform
%          The Radius of the Sphere used is R=R0/(sqrt(2)*sin(Gamma/2));
%   R0 : The outer radius of the transformation (defaults to 1/2 of image size)
%
% outputs,
%   Iwarped : The spherical transformed output image.
%   Tx, Ty : The x and y backwards translation (transformation) images, which 
%            can be used with the function movepixels.m
% 
% note, without outputs , the function show the spherize transformed image
%       overlayed with a grid.
%
% example,
%   I=im2double(imread('lena.jpg'));
%   PinchSpherize(I);
%
% Function is written by D.Kroon University of Twente (January 2009)

% Check inputs
if(~exist('Gamma','var')), Gamma=25; end
if(~exist('R0','var')), R0=max(size(I))/2; end

% Calculate the uniform pixel locations of the image
[coord_x,coord_y]=ndgrid(0:size(I,1)-1,0:size(I,2)-1);

% Center of image is 0,0
coord_x=coord_x-size(I,1)/2; 
coord_y=coord_y-size(I,2)/2;

% When image is not square, calculate scaling to make the coordinates square
mul_x=1; mul_y=1;
if(size(I,1)>size(I,2)), mul_y=size(I,1)/size(I,2); end
if(size(I,1)<size(I,2)), mul_x=size(I,2)/size(I,1); end
coord_x=coord_x*mul_x; coord_y=coord_y*mul_y;

% Gamma in degrees to rad
Gamma_rad=Gamma*(pi/180);

% Calculate backwards projection transformation field
[coord_x_new,coord_y_new]=transform_backward(coord_x,coord_y,R0,Gamma_rad);
Tx=coord_x_new-coord_x; Ty=coord_y_new-coord_y;
Tx=Tx/mul_x; Ty=Ty/mul_y;


% Transform the image
J = movepixels(I,Tx,Ty);

% If no outputs specified by user, show the transformed image
if(nargout==0 )
    % Show transformed image
    figure, imshow(J,[]);
    hold on;
    % Show transformation grid
    showbspline_grid(I,R0,Gamma_rad,mul_x,mul_y);
    % Suppress outputs
    J=[]; Tx=[]; Ty=[];
end

function showbspline_grid(I,R0,Gamma_rad,mul_x,mul_y)
    for i=1:8:max(size(I))
        linex=i*ones(1,max(size(I)))-max(size(I))/2;
        liney=(1:max(size(I)))-max(size(I))/2;
        [linex_new,liney_new]=transform_forward(linex,liney,R0,Gamma_rad);
        plot(liney_new/mul_y+size(I,2)/2,linex_new/mul_x+size(I,1)/2);
    end
    for i=1:8:max(size(I))
        linex=(1:max(size(I)))-max(size(I))/2;
        liney=i*ones(1,max(size(I)))-max(size(I))/2;
        [linex_new,liney_new]=transform_forward(linex,liney,R0,Gamma_rad);
        plot(liney_new/mul_y+size(I,2)/2,linex_new/mul_x+size(I,1)/2);
    end
    

function [coord_x_new,coord_y_new]=transform_forward(coord_x_old,coord_y_old,R0,Gamma_rad)
    % Amplitude (Distance to center) of all points
    pold=sqrt(coord_x_old.^2+coord_y_old.^2);
    
    % Radius of Transformation Sphere 
    R=R0/(sqrt(2)*sin(Gamma_rad/2));
    
    % Z (virtual) Distance to 2D plane 
    Xc=(1/2)*(1+cot(Gamma_rad/2))*R0;
    Yc=(1/2)*(1-cot(Gamma_rad/2))*R0;
    
    % New Amplitude (Distance to center) of all points
    if(Gamma_rad>0)
        pnew=Yc + sqrt(R^2-(pold-Xc).^2);
    elseif(Gamma_rad<0)
        pnew=Yc - sqrt(R^2-(pold-Xc).^2);        
    else
        pnew=pold;
    end
    
    % No distortion outside the sphere region
    pnew(pold>R0)=pold(pold>R0);    
    
    % Eliminate imaginair values due to round errors
    pnew=real(pnew);
    
    % Calculate new x,y locations of the pixels
    imgl=sqrt(coord_x_old.^2+coord_y_old.^2);
    coord_xn=coord_x_old./(imgl+eps);
    coord_yn=coord_y_old./(imgl+eps);
    coord_x_new=pnew.*coord_xn;
    coord_y_new=pnew.*coord_yn;

function [coord_x_old,coord_y_old]=transform_backward(coord_x_new,coord_y_new,R0,Gamma_rad)
    pnew=sqrt(coord_x_new.^2+coord_y_new.^2);
    R=R0/(sqrt(2)*sin(Gamma_rad/2));
    Xc=(1/2)*(1+cot(Gamma_rad/2))*R0;
    Yc=(1/2)*(1-cot(Gamma_rad/2))*R0;
    if(Gamma_rad>0)
        pold=-(sqrt(R^2-(pnew-Yc).^2)-Xc);
    elseif(Gamma_rad<0)
        pold=sqrt(R^2-(Yc-pnew).^2)+Xc;        
    else
        pold=pnew;
    end
    pold(pnew>R0)=pnew(pnew>R0);
    pold=real(pold);  
    imgl=sqrt(coord_x_new.^2+coord_y_new.^2);
    coord_xn=coord_x_new./(imgl+eps);
    coord_yn=coord_y_new./(imgl+eps);
    coord_x_old=pold.*coord_xn;
    coord_y_old=pold.*coord_yn;

