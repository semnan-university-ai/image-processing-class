close all
clear all
clc
a=imread("mountain.png");
[m,n] =size(a);
for i=1:80
    for j=1:639
        if (a(i,j))>200
            a(i,j)=0;
        end
        
    end
end
for i=80:150
    for j=1:290
        if (a(i,j))>200
            a(i,j)=0;
        end
        
    end
end
for i=80:150
    for j=600:639
        if (a(i,j))>200
            a(i,j)=0;
        end
        
    end
end

subplot(1,2,1),imshow("mountain.png");
subplot(1,2,2),imshow(a);