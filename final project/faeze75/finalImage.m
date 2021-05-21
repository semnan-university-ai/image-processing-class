function finalImage=rotation(al,alphabet)

for i=1:4
    R=randi([1 26]);
    al{i}=alphabet(:,:,R);
end
for i=1:2
rand=randi([1 4]);
rotate=imrotate(al{rand},35);
size=(imresize(rotate,[25 25]));
al{rand}=size;
end 
finalImage=cat(2,al{1},al{2},al{3},al{4});
finalImage=imresize(finalImage,[100 300]);
end
