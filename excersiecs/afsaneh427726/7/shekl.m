clc
clear data;
clear all;
w=zeros(500);
% rectangle
w(50,50:150)=1;
w(50:100,50)=1;
w(50:100,150)=1;
w(100,50:150)=1;
% squre
w(150,50:150)=1;
w(150:250,50)=1;
w(150:250,150)=1;
w(250,50:150)=1;
% triangle1
w(200,200:300)=1;
w(100:200,300)=1;
j=300;
i=100
for i=100:200
    w(i,j)=1;
    j=j-1;
end
% triangle2
j=400
for i=100:150
    w(i,j)=1;
    j=j-1;
end
j=400
for i=100:150
    w(i,j)=1;
    j=j+1;
end
w(150,350:450)=1;
% diomond
 j=400
for i=300:350
    w(i,j)=1;
    j=j-1;
end
j=400
for i=300:350
    w(i,j)=1;
    j=j+1;
end 
 j=350
for i=350:400
    w(i,j)=1;
    j=j+1;
end
j=450
for i=350:400
    w(i,j)=1;
    j=j-1;
end 
imshow(w)

