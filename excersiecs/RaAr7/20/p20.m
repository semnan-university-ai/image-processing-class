close all
clear all
clc

r = zeros(400);

% A
for i=100:300
    for j=80:100
        r(i,j) = 1;
    end
end

%Z
for i=280:300
    for j=80:280
        r(i,j) = 1;
    end
end

%R
for i=200:350
    for j=320:340
        r(i,j) = 1;
    end
end

%R
for i=330:350
    for j=280:320
        r(i,j) = 1;
    end
end

%Point
for i=160:180
    for j=170:190
        r(i,j) = 1;
    end
end

%Dandane
for i=240:280
    for j=130:150
        r(i,j) = 1;
    end
end

%Z
for i=220:280
    for j=160:180
        r(i,j) = 1;
    end
end

%Z
for i=220:280
    for j=260:280
        r(i,j) = 1;
    end
end

%Z
for i=220:240
    for j=180:260
        r(i,j) = 1;
    end
end

imshow(r);