clc;clear;close all;
dd=[0,20000,20000,20000,20000,20000];

img = imread('../../../benchmark/lena.png');
img = rgb2gray(img);
[r,c,d] = size(img);

img(:,:,:)=255-img(:,:,:);

num=length(dd);
dataAvg=zeros(num,1);
rnames = strings(1,num);
for n = 1:num
    sum=0;
    for i=1:dd(n)
        X=randi([1,r]);
        Y=randi([1,c]);
        img(X,Y,:)=randi([0,1])*255;
    end
    
    %method 1
    avg=mean(img(:));
    
    %method 2
    for i=1:r
        for j=1:c
            sum=sum+double(img(i,j));
        end
    end
    avgm=sum/(r*c);
    dataAvg(n,1) = avgm;
    rnames(1,n)=strcat('image',int2str(n));
    subplot(2,fix((num+1)/2),n),imshow(img),title(rnames(n));
end
%f=figure(1);
figure;
cnames = {'average all pixel'};

% Create the uitable
t = uitable('Data',dataAvg,...
            'ColumnName',cnames,... 
            'RowName',rnames,...
            'ColumnWidth',{150});
