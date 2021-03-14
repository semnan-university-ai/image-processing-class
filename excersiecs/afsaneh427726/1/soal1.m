clc;
clear data;
clear all;
B=input('tool ra vared kon :   ')
A=input('arz ra vared kon :   ')
w=ones(A,B);
% r=gcd(A,B)
j=1;
 for n=1:(B/20)
     i=1;
     for m=1:(A/20)
         w((10*i-9):(10*i),(10*j-9):(10*j))=0;
         i=i+2
     end
     i=2;
     j=j+1;
     for m=1:(A/20)
         w((10*i-9):(10*i),(10*j-9):(10*j))=0;
         i=i+2;
     end
 j=j+1;
 end
 imshow(w)