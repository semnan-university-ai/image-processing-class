function [alphabet,text]=get_ch(n)
alphabet=zeros(25,25,n);
code=zeros(1,n);
i=1;
    for i=1:n
       s='A':'Z';
       str=s(randi(numel(s))); 
       add="..\..\..\excersiecs\arman-ariamehr\19\alphabet\"+str+".txt";
       code(i)=str;
       ch_arr=dlmread(add);
       alphabet(:,:,i)=ch_arr; 
       i=i+1;
    end  
    alphabet = uint8(alphabet);
    text=char(code);