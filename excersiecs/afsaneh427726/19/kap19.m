close all
clear all
clc
a=imread('C:\Users\as\Desktop\ab\a.png');
a=im2bw(a,0.001);
a=imresize(a,[200,200]);
% imshow(m)
b=imread('C:\Users\as\Desktop\ab\b.png');
b=im2bw(b,0.001);
b=imresize(b,[200,200]);
c=imread('C:\Users\as\Desktop\ab\c.png');
c=im2bw(c,0.001);
c=imresize(c,[200,200]);
d=imread('C:\Users\as\Desktop\ab\d.png');
d=im2bw(d,0.001);
d=imresize(d,[200,200]);
e=imread('C:\Users\as\Desktop\ab\e.png');
e=im2bw(e,0.001);
e=imresize(e,[200,200]);
f=imread('C:\Users\as\Desktop\ab\f.png');
f=im2bw(f,0.001);
f=imresize(f,[200,200]);
g=imread('C:\Users\as\Desktop\ab\g.png');
g=im2bw(g,0.001);
g=imresize(g,[200,200]);
h=imread('C:\Users\as\Desktop\ab\h.png');
h=im2bw(h,0.001);
h=imresize(h,[200,200]);
i=imread('C:\Users\as\Desktop\ab\i.png');
i=im2bw(i,0.001);
i=imresize(i,[200,200]);
j=imread('C:\Users\as\Desktop\ab\j.png');
j=im2bw(j,0.001);
j=imresize(j,[200,200]);
k=imread('C:\Users\as\Desktop\ab\k.png');
k=im2bw(k,0.001);
k=imresize(k,[200,200]);
l=imread('C:\Users\as\Desktop\ab\l.png');
l=im2bw(l,0.001);
l=imresize(l,[200,200]);
m=imread('C:\Users\as\Desktop\ab\m.png');
m=im2bw(m,0.001);
m=imresize(m,[200,200]);
n=imread('C:\Users\as\Desktop\ab\n.png');
n=im2bw(n,0.001);
n=imresize(n,[200,200]);
o=imread('C:\Users\as\Desktop\ab\o.png');
o=im2bw(o,0.001);
o=imresize(o,[200,200]);
p=imread('C:\Users\as\Desktop\ab\p.png');
p=im2bw(p,0.001);
p=imresize(p,[200,200]);
q=imread('C:\Users\as\Desktop\ab\q.png');
q=im2bw(q,0.001);
q=imresize(q,[200,200]);
r=imread('C:\Users\as\Desktop\ab\r.png');
r=im2bw(r,0.001);
r=imresize(r,[200,200]);
s=imread('C:\Users\as\Desktop\ab\s.png');
s=im2bw(s,0.001);
s=imresize(s,[200,200]);
t=imread('C:\Users\as\Desktop\ab\t.png');
t=im2bw(t,0.001);
t=imresize(t,[200,200]);
u=imread('C:\Users\as\Desktop\ab\u.png');
u=im2bw(u,0.001);
u=imresize(u,[200,200]);
v=imread('C:\Users\as\Desktop\ab\v.png');
v=im2bw(v,0.001);
v=imresize(v,[200,200]);
w=imread('C:\Users\as\Desktop\ab\w.png');
w=im2bw(w,0.001);
w=imresize(w,[200,200]);
x=imread('C:\Users\as\Desktop\ab\x.png');
x=im2bw(x,0.001);
x=imresize(x,[200,200]);
y=imread('C:\Users\as\Desktop\ab\y.png');
y=im2bw(y,0.001);
y=imresize(y,[200,200]);
z=imread('C:\Users\as\Desktop\ab\z.png');
z=im2bw(z,0.001);
z=imresize(z,[200,200]);
mm=0
for ii=1:4
    aa=randi(26)
    if (aa==1)
        xx(1:200,((100*mm)+1):(100*(mm+2)))=a;
    end
    if (aa==2)
        xx(1:200,((100*mm)+1):(100*(mm+2)))=b;
    end
    if (aa==3)
        xx(1:200,((100*mm)+1):(100*(mm+2)))=c;
    end
    if (aa==4)
        xx(1:200,((100*mm)+1):(100*(mm+2)))=d;
    end
    if (aa==5)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=e;
    end
    if (aa==6)
        xx(1:200,((100*mm)+1):(100*(mm+2)))=f;
    end
    if (aa==7)
        xx(1:200,((100*mm)+1):(100*(mm+2)))=g;
    end
    if (aa==8)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=h;
    end
    if (aa==9)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=i;
    end
    if (aa==10)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=j;
    end
    if (aa==11)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=k;
    end
    if (aa==12)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=l;
    end
    if (aa==13)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=m;
    end
    if (aa==14)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=n;
    end
    if (aa==15)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=o;
    end
    if (aa==16)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=p;
    end
    if (aa==17)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=q;
    end
    if (aa==18)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=r;
    end
    if (aa==19)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=s;
    end
    if (aa==20)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=t;
    end
    if (aa==21)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=u;
    end
    if (aa==22)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=v;
    end
    if (aa==23)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=w;
    end
    if (aa==24)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=x;
    end
    if (aa==25)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=y;
    end
    if (aa==26)
       xx(1:200,((100*mm)+1):(100*(mm+2)))=z;
    end
    mm=mm+2;
    
end
uint8(xx);
figure;
imshow(xx);

