clc;
clear;
close all;
a=[0,20000,20000,20000,20000,20000];
pic = imread('d:\tamrin\13\yas.jpg');
pic = rgb2gray(pic);
[b,c,d] = size(pic);
pic(:,:,:)=255-pic(:,:,:);
num=length(a);
dataAvg=zeros(num,1);
rnames = strings(1,num);
for n = 1:num
    sum=0;
    for i=1:a(n)
        X=randi([1,b]);
        Y=randi([1,c]);
        pic(X,Y,:)=randi([0,1])*255;
    end
    
    %-------------------first method
    avg=mean(pic(:));
    
    %-------------------second method--------
    for i=1:b
        for j=1:c
            sum=sum+double(pic(i,j));
        end
    end
    avgm=sum/(b*c);
    dataAvg(n,1) = avgm;
    rnames(1,n)=strcat('image',int2str(n));
    subplot(2,fix((num+1)/2),n),imshow(pic),title(rnames(n));
end
figure;
cnames = {'average all pixel'};

% ---------------------table----------
t = uitable('Data',dataAvg,...
            'ColumnName',cnames,... 
            'RowName',rnames,...
            'ColumnWidth',{150});