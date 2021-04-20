close all
how_many = input('how many number does your captha want = ');
list=[];
for i=1:how_many 

    number=randi(9);
%     m=imread("C:\Users\nmzis\OneDrive\Desktop\t\"+int2str(number)+".png");
    path=strcat('C:\Users\nmzis\OneDrive\Desktop\adad\',int2str(number),'.png');
    m=imread(path);
    m1=imbinarize(m,0.0001);
    m2=imresize(m1,[200,200]);
    list = [list; m2]; 

end
imshow(list)


