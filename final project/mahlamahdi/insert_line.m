function image = insert_line(image, m ,n)
M = randi([4,6]);
for i=1:M
    size=randi([50 , 200]);
    p = max(size);
    mm= randi([10, m-p]);
    nn= randi([10, n-p]);
    start=[mm,nn];
    
y=start(1)+size;
for x =round(size/2) : size-1
    image(start(1)+1,start(2)+x)=255;
    y=y-1;
end
end
M = randi([4,6]);
for i=1:M
    size=randi([50 , 200]);
    p = max(size);
    mm= randi([10, m-p]);
    nn= randi([10, n-p]);
    start=[mm,nn];
    
y=start(1)+size;
for x =1 : round(size/2)
  image(start(1)+x,start(2)+x)=255;
    y=y-1;
end
end
M = randi([4,6]);
for i=1:M
    size=randi([50 , 200]);
    p = max(size);
    mm= randi([10, m-p]);
    nn= randi([10, n-p]);
    start=[mm,nn];
    
y=start(1)+size;
for x =1 : round(size/2)
  image(y,start(2)+x)=255;
    y=y-1;
end
end
end
