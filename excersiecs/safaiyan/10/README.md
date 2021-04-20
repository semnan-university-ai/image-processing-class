#### tamrin 10 code:


```
%thank's to @armsn-ariamehr
%tashkil safhe siah
img = zeros(25 , 125);
%ijad adad tasadofi aval va gereftan tasvir adad aval
    a = randi([0 9]);
    if a == 0
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\0.txt');
    elseif a == 1
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\1.txt');
    elseif  a == 2
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\2.txt');
    elseif  a == 3
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\3.txt');
    elseif  a == 4
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\4.txt');
    elseif  a == 5
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\5.txt');
    elseif  a == 6
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\6.txt');
    elseif  a == 7
        m = 'C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\7.txt';
    elseif  a == 8
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\8.txt');
    else
        m = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\9.txt');
    end
%ijad adad tasadofi dovom va gereftan tasvir adad dovom
    b = randi([0 9]);
    if b == 0
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\0.txt');
    elseif b == 1
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\1.txt');
    elseif  b == 2
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\2.txt');
    elseif  b == 3
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\3.txt');
    elseif  b == 4
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\4.txt');
    elseif  b == 5
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\5.txt');
    elseif  b == 6
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\6.txt');
    elseif  b == 7
        n = 'C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\7.txt';
    elseif  b == 8
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\8.txt');
    else
        n = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\9.txt');
    end
%ijad adad tasadofi sevom va gereftan tasvir adad sevom
    c = randi([0 9]);
    if c == 0
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\0.txt');
    elseif c == 1
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\1.txt');
    elseif  c == 2
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\2.txt');
    elseif  c == 3
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\3.txt');
    elseif  c == 4
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\4.txt');
    elseif  c == 5
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\5.txt');
    elseif  c == 6
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\6.txt');
    elseif  c == 7
        o = 'C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\7.txt';
    elseif  c == 8
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\8.txt');
    else
        o = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\9.txt');
    end
%ijad adad tasadofi chaharom va gereftan tasvir adad chaharom
    d = randi([0 9]);
    if d == 0
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\0.txt');
    elseif d == 1
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\1.txt');
    elseif  d == 2
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\2.txt');
    elseif  d == 3
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\3.txt');
    elseif  d == 4
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\4.txt');
    elseif  d == 5
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\5.txt');
    elseif  d == 6
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\6.txt');
    elseif  d == 7
        p = 'C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\7.txt';
    elseif  d == 8
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\8.txt');
    else
        p = dlmread('C:\Users\Nakisa™\Documents\GitHub\image-processing-class\excersiecs\safaiyan\10\digit\9.txt');
    end
  %gozashtan 4 adad dar tasvir va namayesh  
img = [m n o p];
imshow(img);

```


![khorooji](result.jpg)