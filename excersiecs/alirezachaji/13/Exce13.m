close all
clear all
clc
t=zeros(10,6);
for i=1:10
    d=randi([10000,100000]);
    figure;
    A=func_13("..\..\..\benchmark\lena.png",d);
    t(i,1)=i;
    t(i,2)=d;
    t(i,3:5)=A;
    t(i,6)=round((A(1)+A(2)+A(3))/3);
end 
T = array2table(t,'VariableNames', {'Item','Noise_size','Red_ave','Green_ave','Blue_ave','All_ave'})
f=figure;
h={'Item','Noise_size','Red_ave','Green_ave','Blue_ave','All_ave'};

f=figure;
t=uitable(f,'data',t,'columnname',h);
