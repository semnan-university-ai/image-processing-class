close all
clear all
clc
npix=0;
while (npix<8)
 npix=input('Please enter a number as the chess dimension more than 8  :');
end

b=floor(npix/8);
c=mod(npix,8);
size=npix-c;
chess=zeros(1,2);
s=1
for i=1:b:size
    
    for j=1:b:size
        
        if isequal(s,0)
            rectangle('Position',[j i b b], 'FaceColor',[ 1 1 1])
            s=1;
        else
            rectangle('Position',[j i b b], 'FaceColor',[0 0 0])
            s=0;
        end
        
    end
    
     if isequal(s,0)
            s=1;
     else
            s=0;
     end
     
end