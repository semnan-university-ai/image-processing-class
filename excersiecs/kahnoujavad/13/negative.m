clc;
clear all;
close all;
a=[0,20000,20000,20000,20000,20000];

image = imread("D:/image-processing-class/benchmark/lena.png");
image = rgb2gray(image);
[r,c,d] = size(image);
image(:,:,:)=255-image(:,:,:);

n=length(a);
Avg=zeros(n,1);
rnames = strings(1,n);
for n = 1:n
    sum=0;
    for i=1:a(n)
        X=randi([1,r]);
        Y=randi([1,c]);
        image(X,Y,:)=randi([0,1])*255;
    end
    

    avg=mean(image(:));
    
    for i=1:r
        for j=1:c
            sum=sum+double(image(i,j));
        end
    end
    avgm=sum/(r*c);
    Avg(n,1) = avgm;
    rnames(1,n)=strcat('image',int2str(n));
    subplot(2,fix((n+1)/2),n),imshow(image),title(rnames(n));
end

figure;
cnames = {'average all pixel'};


t = uitable('Data',Avg,...
            'ColumnName',cnames,... 
            'RowName',rnames,...
            'ColumnWidth',{150});
