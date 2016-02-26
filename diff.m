clc;
clear all;
close all;

f = @(x,y) -x.*y;

x1 = 0;
y1 = 1;
h =0.05;
xn = 0.25;
[x,y] = euler(f,x1,y1,h,xn);
plot (x,y);
