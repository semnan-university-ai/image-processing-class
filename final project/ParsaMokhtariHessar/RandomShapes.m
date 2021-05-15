function image = RandomShapes(image,NumberOfShapes,m)
NumberOfCases = 5;
Shapes = [randi([0 NumberOfCases-1],1,NumberOfShapes);];
[width , height] = size(image);
r = [randi([0 m],1,NumberOfShapes);];
t = 2; % threshhold
p = zeros(1,2,NumberOfShapes);
for o=1 : NumberOfShapes
    p(:,:,o) = [randi([1 width]) randi([1 height])];
end


for k=1 : NumberOfShapes 
    switch Shapes(1,k)
        case 0
            %square
                for i=1 : width
                    for j=1 : height
                        pri = [abs(p(1,1,k)-i)  abs(p(1,2,k)-j) ];
                        z = max(pri);
                        if  r(k)-t <= z  && z <= r(k)+t 
                            image(i, j) = 255;
                        end
                    end
                end
        case 1
            %rectangle
                for i=1 : width
                    for j=1 : height
                        pri=[abs(p(1,1,k)-i)  0.5*abs(p(1,2,k)-j)];
                        z= max(pri);
                        if  r(k)-t <= z  && z <= r(k)+t 
                            image(i, j) = 255;
                        end
                    end
                end           
        case 2
            %Rhombus
                for i=1 : width
                    for j=1 : height
                        z=abs(p(1,1,k)-i)+ 1.68*abs(p(1,2,k)-j);
                        if r(k)-t <= z  && z <= r(k)+t 
                            image(i, j) = 255;
                        end
                    end
                end       
        case 3
              %Circle
                for i=1 : width
                    for j=1 : height
                        z=(p(1,1,k)-i)^2 +(p(1,2,k)-j)^2;
                        if  z<= r(k)^2+t*20 && z>= r(k)^2-t*20
                            image(i, j) = 255;
                        end
                    end
                end
            
        case 4 
            %Triangle
            x0=p(1,1,k);
            y0=p(1,2,k);
            t0=1/sqrt(3);
            for x=1 : width
                for y=1 : height
                      pri=[abs(x+(y-y0)/t0-x0) abs(x-(y-y0)/t0-x0) abs(x-x0+r)] ;
                      z=max(pri);
                    if r(k)-t <= z && z <= r(k)+t 
                        image(x, y) = 255;
                    end
                end
            end
    end
end

end

