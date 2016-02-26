clc;
clear all;
close all;

x1=0;
xn=0.25;
h=0.05;
y1=0;
z1=1;
f = @(x,y,z) z;
g =@(x,y,z) -2z-y;

[y,z]=heumfunc(f,g,x1,y1,z1,h,xn)
