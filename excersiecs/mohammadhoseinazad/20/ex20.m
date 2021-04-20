close all
clear all
clc

plane = zeros(400,800);


%paye
for i=250:270
    for j=280:750
        plane(i,j) = 1;
    end
end

%payine m
for i=300:320
    for j=700:750
        plane(i,j) = 0.5;
    end
end

%right m
for i=250:320
    for j=750:770
        plane(i,j) = 0.5;
    end
end

%left m
for i=250:320
    for j=680:700
        plane(i,j) = 0.5;
    end
end

%right h
for i=190:250
    for j=630:650
        plane(i,j) = 0.7;
    end
end

%balaye h
for i=170:190
    for j=560:650
        plane(i,j) = 0.7;
    end
end

%dandune h
for i=170:210
    for j=560:580
        plane(i,j) = 0.7;
    end
end

%payine m
for i=300:320
    for j=430:480
        plane(i,j) = 0.5;
    end
end

%right m
for i=250:320
    for j=480:500
        plane(i,j) = 0.5;
    end
end

%left m
for i=250:320
    for j=410:430
        plane(i,j) = 0.5;
    end
end

%d
for i=190:320
    for j=260:280
        plane(i,j) = 0.5;
    end
end

%balaye d
for i=170:190
    for j=200:280
        plane(i,j) = 0.8;
    end
end

%payine d
for i=300:320
    for j=200:280
        plane(i,j) = 0.8;
    end
end

imshow(plane);