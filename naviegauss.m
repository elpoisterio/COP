clc;
clear all;
close all; 

K1 = 10;
k2=15;
k3 = 20;
a= zeros(3);
m1= 0.09;
m2= 0.065;
m3 = 0.07;
g= 9.8;
a= [k1+k2,-k2,0;-k2,k2+k3,-k3;0,-k3,k3];
b=[m1*g,m2*g,m3*g];
%A = a\b ;
%x= Ab
n=3
for i=0 : n-1
  for j=i+1:n
    u= a(j,i)/a(i,i);
    a(j,i) =0;
    for l = i+1:n+1
    a(j,l)= a(j,l)-u*a(i,l)
    end
  end 
end