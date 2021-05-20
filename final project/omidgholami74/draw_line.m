function result=draw_line(img, X1, Y1, X2, Y2)
result = img;

for x=max(1, X1):sign(X2 - X1):max(1, X2)
    y = round(f(x, X1, Y1, X2, Y2));
    if y > 0
        result(x, y:y+2) = 255;
    end
end
for y=max(1, Y1):sign(Y2 - Y1):max(1, Y2)
    x = round(f2(y, X1, Y1, X2, Y2));
    if x > 0
        result(x, y:y+2) = 255;
        
    end
end
function y=f(x, X1, Y1, X2, Y2)
a = (Y2 - Y1)/(X2 - X1);
b = Y1 - X1 * a;
y = a * x + b;
function x=f2(y, X1, Y1, X2, Y2)
if X1==X2
    x = X1;
else
	a = (Y2 - Y1)/(X2 - X1);
	b = Y1 - X1 * a;
	x = (y - b)/a;
end
