function [a,h] = fun1 (a_c,w1,h1)
w=a_c*25;
w2=round(w1/w)+1;
h=w2*25;
if h>h1
    h=h1;
end
 a=round(h1/2)-round(h/2);
end