z=zeros(1,2);
x={10 1000 10000 90000};
avg=0;
for i=1:length(x)
   A=func('lena.png',x{i});
   
   z(i)=A;
end
T = array2table(z,...
    'VariableNames',{'av10','av1000','av10000','av90000'})
function avg=func(add,ps)
image=imread('lena.png');
Ssize=size(image);
colors=[0 255];
if Ssize(3)==3
    image=rgb2gray(image);
    
end
image=255-image;
for i=1:ps
    x=randi( Ssize(1));
    y=randi( Ssize(2));
    image(x,y)=colors(randi(2));
 
end

avg = mean(mean(image));
figure,
imshow(image)
end
