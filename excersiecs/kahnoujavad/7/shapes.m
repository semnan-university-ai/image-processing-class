clc;
clear all;
close all;
p=0;
image=zeros(500,'uint8');
a=[p,200,100,250,150,300,100,250,50,200,100]; %Diamond
    p,50,50,100,50,100,100,50,100,50,50,... %spure
    p,50,300,50,350,150,350,150,300,50,300,... %rectangle
     p,50,200,100,250,100,150,50,200,...   %triangle
    
l=length(a)-2;m=1;
while (m < l)
    if (a(m)==0) m=m+1; end
    if (a(m+2)==0) m=m+3; end
    
   A1=a(m);B0=a(m+1);A1=a(m+2);c1=a(m+3);
    if( A0 == A1 ) image(A0,B0:c1); end %Draw vertical line
    %Simplified Bresenham algorithm
    dx = abs(A1-A0);
    dy = abs(c1-B0);
 
    if(A0 < A1)
        x = 1;
    else x = -1;
    end
    if(B0 < c1)
        y = 1;
    else
        y = -1;
    end
    
    e = dx - dy;
    x= A0;y = B0;
 
    while(true)
        image(x,y)=255; %setPixel
        if( x == A1 )&&( y == c1)
            break; 
        end
        e2 = 2*e;
        if( e2 > -dy )
            e = e - dy;
            x = x + x;
        end
        if( e2 <  dx )
            e = e + dx;
            y = y + y;
        end
    end 
    m=m+2;
end
imshow(image);
