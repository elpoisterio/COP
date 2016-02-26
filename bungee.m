clc;
clear all;
close all;

cd = 0.25; g = 9.81; v = 36; t = 4;
x1 = 50; x2 =200;
tol = 0.01;
%mp = linspace(50,200);
%fp = sqrt(g*mp/cd).*tanh(sqrt(g*cd./mp)*t)-v;
fp = @(mp) sqrt(g*mp/cd).*tanh(sqrt(g*cd./mp)*t)-v;
[m ,f]= bisection(fp,x1,x2,tol);
plot(m,f,'.'),grid;

